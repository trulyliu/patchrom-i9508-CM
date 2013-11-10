.class final Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;,
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final GROUP_SEPARATOR:Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v12, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    const-string v12, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    const-string v12, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d [0-2]\\d$"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    const-string v12, ":[0-5]\\d"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    const-string v9, "(\\[\uff08\uff3b"

    .local v9, openingParens:Ljava/lang/String;
    const-string v2, ")\\]\uff09\uff3d"

    .local v2, closingParens:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, nonParens:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-static {v14, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v1

    .local v1, bracketPairLimit:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    const/4 v12, 0x2

    invoke-static {v14, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v7

    .local v7, leadLimit:Ljava/lang/String;
    const/4 v12, 0x4

    invoke-static {v14, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v11

    .local v11, punctuationLimit:Ljava/lang/String;
    const/16 v3, 0x13

    .local v3, digitBlockLimit:I
    invoke-static {v14, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v0

    .local v0, blockLimit:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, punctuation:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Nd}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, digitSequence:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+\uff0b"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, leadClassChars:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, leadClass:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Z}[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\\p{Nd}]*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 2
    .parameter "util"
    .parameter "text"
    .parameter "country"
    .parameter "leniency"
    .parameter "maxTries"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-eqz p2, :cond_3

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    return-void

    .restart local p2
    :cond_3
    const-string p2, ""

    goto :goto_0
.end method

.method static allNumberGroupsAreExactlyPresent(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7
    .parameter "util"
    .parameter "number"
    .parameter "normalizedCandidate"
    .parameter "formattedNumberGroups"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, candidateGroups:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v0

    add-int/lit8 v1, v5, -0x2

    .local v1, candidateNumberGroupIndex:I
    :goto_0
    array-length v5, v0

    if-eq v5, v3, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_1
    return v3

    .end local v1           #candidateNumberGroupIndex:I
    :cond_1
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .restart local v1       #candidateNumberGroupIndex:I
    :cond_2
    array-length v5, p3

    add-int/lit8 v2, v5, -0x1

    .local v2, formattedNumberGroupIndex:I
    :goto_2
    if-lez v2, :cond_4

    if-ltz v1, :cond_4

    aget-object v5, v0, v1

    aget-object v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-ltz v1, :cond_5

    aget-object v5, v0, v1

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method static allNumberGroupsRemainGrouped(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5
    .parameter "util"
    .parameter "number"
    .parameter "normalizedCandidate"
    .parameter "formattedNumberGroups"

    .prologue
    const/4 v0, 0x0

    .local v0, fromIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_2

    aget-object v3, p3, v1

    invoke-virtual {p2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .local v2, nationalSignificantNumber:Ljava/lang/String;
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .end local v2           #nationalSignificantNumber:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method static checkNumberGroupingIsValid(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 4
    .parameter "number"
    .parameter "candidate"
    .parameter "util"
    .parameter "checker"

    .prologue
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, normalizedCandidate:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-static {p2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v0

    .local v0, formattedNumberGroups:[Ljava/lang/String;
    invoke-interface {p3, p2, p0, v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static containsMoreThanOneSlash(Ljava/lang/String;)Z
    .locals 3
    .parameter "candidate"

    .prologue
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, firstSlashIndex:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 8
    .parameter "number"
    .parameter "candidate"
    .parameter "util"

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x58

    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, charAtIndex:C
    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_4

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, charAtNextIndex:C
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v4, v5, :cond_4

    .end local v0           #charAtIndex:C
    .end local v1           #charAtNextIndex:C
    :cond_2
    :goto_1
    return v3

    .restart local v0       #charAtIndex:C
    .restart local v1       #charAtNextIndex:C
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v1           #charAtNextIndex:C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #charAtIndex:C
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private extractInnerMatch(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 11
    .parameter "candidate"
    .parameter "offset"

    .prologue
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, groupMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, firstGroupOnly:Ljava/lang/CharSequence;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .local v3, match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_1

    .end local v0           #firstGroupOnly:Ljava/lang/CharSequence;
    .end local v3           #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_0
    :goto_0
    return-object v3

    .restart local v0       #firstGroupOnly:Ljava/lang/CharSequence;
    .restart local v3       #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_1
    iget-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .local v5, withoutFirstGroupStart:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, withoutFirstGroup:Ljava/lang/CharSequence;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    add-int v8, p2, v5

    invoke-direct {p0, v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    if-nez v3, :cond_0

    iget-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    iget-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    move v2, v5

    .local v2, lastGroupStart:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, withoutLastGroup:Ljava/lang/CharSequence;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    if-nez v3, :cond_0

    iget-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .end local v0           #firstGroupOnly:Ljava/lang/CharSequence;
    .end local v2           #lastGroupStart:I
    .end local v3           #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v4           #withoutFirstGroup:Ljava/lang/CharSequence;
    .end local v5           #withoutFirstGroupStart:I
    .end local v6           #withoutLastGroup:Ljava/lang/CharSequence;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 5
    .parameter "candidate"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, followingText:Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0           #followingText:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, rawString:Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .local v1, match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-nez v1, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    goto :goto_0
.end method

.method private find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 8
    .parameter "index"

    .prologue
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, matcher:Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .local v3, start:I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, candidate:Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .local v1, match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_0

    .end local v0           #candidate:Ljava/lang/CharSequence;
    .end local v1           #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3           #start:I
    :goto_1
    return-object v1

    .restart local v0       #candidate:Ljava/lang/CharSequence;
    .restart local v1       #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .restart local v3       #start:I
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v3, v4

    iget-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_0

    .end local v0           #candidate:Ljava/lang/CharSequence;
    .end local v1           #match:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3           #start:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 6
    .parameter "util"
    .parameter "number"
    .parameter "formattingPattern"

    .prologue
    if-nez p2, :cond_1

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .local v2, rfc3966Format:Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, endIndex:I
    if-gez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .local v3, startIndex:I
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .end local v0           #endIndex:I
    .end local v2           #rfc3966Format:Ljava/lang/String;
    .end local v3           #startIndex:I
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .local v1, nationalSignificantNumber:Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v1, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 2
    .parameter "character"

    .prologue
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLatinLetter(C)Z
    .locals 4
    .parameter "letter"

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 10
    .parameter "number"
    .parameter "util"

    .prologue
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v8, v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .local v4, phoneNumberRegion:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .local v2, metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .local v3, nationalNumber:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1, v8, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .local v1, formatRule:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    .local v0, candidateNationalPrefixRule:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "$1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, rawInputCopy:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v5, rawInput:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v2, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v7

    goto :goto_0
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .parameter "lower"
    .parameter "upper"

    .prologue
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-ge p1, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 7
    .parameter "candidate"
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    if-lez p2, :cond_2

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .local v3, previousChar:C
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v3           #previousChar:C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, p2, v5

    .local v0, lastCharIndex:I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, nextChar:C
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0           #lastCharIndex:I
    .end local v1           #nextChar:C
    :cond_3
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .local v2, number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v5, v2, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    new-instance v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    invoke-direct {v5, p2, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .end local v2           #number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pattern"
    .parameter "candidate"

    .prologue
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, trailingCharsMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .local v0, result:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
