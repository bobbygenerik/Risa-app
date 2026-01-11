.class public final Lˈـ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˈـ/ˈٴ;

.field public static final ˈ:Ljava/util/regex/Pattern;


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lˈـ/ˈٴ;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3, v4}, Lˈـ/ˈٴ;-><init>(JJ)V

    sput-object v0, Lˈـ/ˈٴ;->ʽ:Lˈـ/ˈٴ;

    const-string v0, "npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˈـ/ˈٴ;->ˈ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˈـ/ˈٴ;->ﹳٴ:J

    iput-wide p3, p0, Lˈـ/ˈٴ;->ⁱˊ:J

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)Lˈـ/ˈٴ;
    .locals 7

    .prologue
    sget-object v0, Lˈـ/ˈٴ;->ˈ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    sget-object v2, Lˈـ/ᴵˊ;->ﹳٴ:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object p0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string p0, "now"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr p0, v2

    float-to-long v3, p0

    :goto_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr p0, v2

    float-to-long v5, p0

    cmp-long p0, v5, v3

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    new-instance p0, Lˈـ/ˈٴ;

    invoke-direct {p0, v3, v4, v0, v1}, Lˈـ/ˈٴ;-><init>(JJ)V

    return-object p0

    :cond_3
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
