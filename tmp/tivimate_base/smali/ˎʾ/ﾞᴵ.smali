.class public final Lˎʾ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʽ:Lˊﾞ/ٴᵢ;

.field public ˈ:J

.field public ˑﹳ:I

.field public ᵎﹶ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ﾞᴵ;->ﹳٴ:Lˈـ/ﾞʻ;

    :try_start_0
    iget-object p1, p1, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    invoke-static {p1}, Lˎʾ/ﾞᴵ;->ˑﹳ(Lʼʻ/ᵔי;)I

    move-result p1

    iput p1, p0, Lˎʾ/ﾞᴵ;->ⁱˊ:I
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ﾞᴵ;->ˈ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ﾞᴵ;->ˑﹳ:I

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lˎʾ/ﾞᴵ;->ᵎﹶ:J

    iput-wide v0, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ˑﹳ(Lʼʻ/ᵔי;)I
    .locals 5

    .prologue
    const-string v0, "config"

    invoke-virtual {p0, v0}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ʽﹳ(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v2, Lʻᴵ/ʻٴ;

    array-length v3, p0

    invoke-direct {v2, v3, p0}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    invoke-virtual {v2, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string v3, "Only supports allStreamsSameTimeFraming."

    invoke-static {v3, p0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "Only suppors one program."

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :cond_2
    const-string v2, "Only suppors one layer."

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    move v1, p0

    goto :goto_2

    :cond_3
    const-string v2, "unsupported audio mux version: "

    invoke-static {p0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Landroidx/media3/common/ParserException;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0, v1}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    throw v2

    :cond_4
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lˎʾ/ﾞᴵ;->ˈ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lˎʾ/ﾞᴵ;->ˈ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ﾞᴵ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object p2, p0, Lˎʾ/ﾞᴵ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ﾞᴵ;->ˈ:J

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    iput-wide p3, p0, Lˎʾ/ﾞᴵ;->ᵎﹶ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 13

    .prologue
    move/from16 v0, p4

    iget-object v1, p0, Lˎʾ/ﾞᴵ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v1, p0, Lˎʾ/ﾞᴵ;->ˑﹳ:I

    invoke-static {v1}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v1

    iget v2, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-lez v2, :cond_0

    if-ge v1, v0, :cond_0

    iget-object v6, p0, Lˎʾ/ﾞᴵ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    iget v10, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v5, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    iput-wide v3, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    :cond_0
    move v1, v5

    :goto_0
    iget v2, p0, Lˎʾ/ﾞᴵ;->ⁱˊ:I

    if-ge v1, v2, :cond_3

    move v2, v5

    :cond_1
    iget v6, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v7, p1, Lᐧˎ/ﹳᐧ;->ʽ:I

    if-ge v6, v7, :cond_2

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    add-int/2addr v2, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_1

    :cond_2
    iget-object v6, p0, Lˎʾ/ﾞᴵ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-interface {v6, v2, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v6, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v6, v2

    iput v6, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-wide v7, p0, Lˎʾ/ﾞᴵ;->ᵎﹶ:J

    iget-wide v11, p0, Lˎʾ/ﾞᴵ;->ˈ:J

    iget-object p1, p0, Lˎʾ/ﾞᴵ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget v6, p1, Lˈـ/ﾞʻ;->ⁱˊ:I

    move-wide v9, p2

    invoke-static/range {v6 .. v12}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v1

    iput-wide v1, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    if-eqz p5, :cond_4

    iget-object v6, p0, Lˎʾ/ﾞᴵ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    iget v10, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v5, p0, Lˎʾ/ﾞᴵ;->ﾞᴵ:I

    iput-wide v3, p0, Lˎʾ/ﾞᴵ;->ᵔᵢ:J

    :cond_4
    iput v0, p0, Lˎʾ/ﾞᴵ;->ˑﹳ:I

    return-void
.end method
