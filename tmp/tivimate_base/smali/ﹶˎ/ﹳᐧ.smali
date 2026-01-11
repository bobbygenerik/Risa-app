.class public final Lﹶˎ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# static fields
.field public static final ʼˎ:Ljava/util/regex/Pattern;

.field public static final ˆʾ:Ljava/util/regex/Pattern;


# instance fields
.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public final ˈ:Lʽᐧ/ˆʾ;

.field public final ˑﹳ:Z

.field public ᵎﹶ:[B

.field public ᵔᵢ:I

.field public final ⁱˊ:Lᐧˎ/ـˆ;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:Lˊﾞ/ᵔﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lﹶˎ/ﹳᐧ;->ʼˎ:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lﹶˎ/ﹳᐧ;->ˆʾ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶˎ/ﹳᐧ;->ⁱˊ:Lᐧˎ/ـˆ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lﹶˎ/ﹳᐧ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    iput-object p3, p0, Lﹶˎ/ﹳᐧ;->ˈ:Lʽᐧ/ˆʾ;

    iput-boolean p4, p0, Lﹶˎ/ﹳᐧ;->ˑﹳ:Z

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹶˎ/ﹳᐧ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    iget-object v1, p0, Lﹶˎ/ﹳᐧ;->ˈ:Lʽᐧ/ˆʾ;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˊﾞ/ᵔﹳ;Lʽᐧ/ˆʾ;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lﹶˎ/ﹳᐧ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v0, Lˊﾞ/יـ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {p1, v0}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    return-void
.end method

.method public final ʽ(J)Lˊﾞ/ٴᵢ;
    .locals 3

    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    new-instance v1, Lʽⁱ/ᵔﹳ;

    invoke-direct {v1}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v2, "text/vtt"

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v2, p0, Lﹶˎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v2, v1, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iput-wide p1, v1, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    invoke-static {v1, v0}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iget-object p1, p0, Lﹶˎ/ﹳᐧ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    return-object v0
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ˑﹳ()V
    .locals 15

    .prologue
    new-instance v0, Lᐧˎ/ﹳᐧ;

    iget-object v1, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    invoke-static {v0}, Lʿˎ/ˆʾ;->ˈ(Lᐧˎ/ﹳᐧ;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_3

    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v4, Lﹶˎ/ﹳᐧ;->ʼˎ:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lﹶˎ/ﹳᐧ;->ˆʾ:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lʿˎ/ˆʾ;->ʽ(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v10, 0xf4240

    const-wide/32 v12, 0x15f90

    invoke-static/range {v8 .. v14}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v8, Lʿˎ/ˆʾ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_4
    sget-object v8, Lʿˎ/ʼˎ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v10, v1

    :cond_5
    if-nez v10, :cond_6

    invoke-virtual {p0, v2, v3}, Lﹶˎ/ﹳᐧ;->ʽ(J)Lˊﾞ/ٴᵢ;

    return-void

    :cond_6
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lʿˎ/ˆʾ;->ʽ(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v4, v0

    sub-long v8, v4, v6

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v10, 0x15f90

    const-wide/32 v12, 0xf4240

    invoke-static/range {v8 .. v14}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    const-wide v4, 0x200000000L

    rem-long/2addr v2, v4

    iget-object v4, p0, Lﹶˎ/ﹳᐧ;->ⁱˊ:Lᐧˎ/ـˆ;

    invoke-virtual {v4, v2, v3}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {p0, v0, v1}, Lﹶˎ/ﹳᐧ;->ʽ(J)Lˊﾞ/ٴᵢ;

    move-result-object v5

    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    iget v1, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    iget-object v2, p0, Lﹶˎ/ﹳᐧ;->ʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v1, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    iget v0, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    invoke-interface {v5, v0, v2}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v9, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 4

    .prologue
    iget-object p2, p0, Lﹶˎ/ﹳᐧ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    iget v0, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    iget-object v1, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    :cond_1
    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    iget v1, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget v0, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    add-int/2addr v0, p1

    iput v0, p0, Lﹶˎ/ﹳᐧ;->ᵔᵢ:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lﹶˎ/ﹳᐧ;->ˑﹳ()V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v3
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    iget-object v3, p0, Lﹶˎ/ﹳᐧ;->ʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v3, v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-static {v3}, Lʿˎ/ˆʾ;->ﹳٴ(Lᐧˎ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v2, v4, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    iget-object p1, p0, Lﹶˎ/ﹳᐧ;->ᵎﹶ:[B

    const/16 v0, 0x9

    invoke-virtual {v3, v0, p1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-static {v3}, Lʿˎ/ˆʾ;->ﹳٴ(Lᐧˎ/ﹳᐧ;)Z

    move-result p1

    return p1
.end method
