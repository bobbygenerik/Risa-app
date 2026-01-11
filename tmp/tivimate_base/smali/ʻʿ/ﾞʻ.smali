.class public final Lʻʿ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public final ˈ:Lﹳᵢ/ᵢˏ;

.field public ˑﹳ:Z

.field public final synthetic ᵎﹶ:Lʻʿ/ˉʿ;

.field public ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lʻʿ/ˉʿ;Ljava/lang/String;ILﹳᵢ/ᵢˏ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ﾞʻ;->ᵎﹶ:Lʻʿ/ˉʿ;

    iput-object p2, p0, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iput p3, p0, Lʻʿ/ﾞʻ;->ⁱˊ:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Lﹳᵢ/ᵢˏ;->ˈ:J

    :goto_0
    iput-wide p1, p0, Lʻʿ/ﾞʻ;->ʽ:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    :cond_1
    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lʽⁱ/ʼˈ;Lʽⁱ/ʼˈ;)Z
    .locals 6

    .prologue
    iget v0, p0, Lʻʿ/ﾞʻ;->ⁱˊ:I

    invoke-virtual {p1}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lʻʿ/ﾞʻ;->ᵎﹶ:Lʻʿ/ˉʿ;

    iget-object v4, v1, Lʻʿ/ˉʿ;->ﹳٴ:Lʽⁱ/ˊˋ;

    invoke-virtual {p1, v0, v4}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    iget v0, v4, Lʽⁱ/ˊˋ;->ᵔʾ:I

    :goto_0
    iget v5, v4, Lʽⁱ/ˊˋ;->ˉˆ:I

    if-gt v0, v5, :cond_0

    invoke-virtual {p1, v0}, Lʽⁱ/ʼˈ;->ﾞʻ(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v3, :cond_2

    iget-object p1, v1, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    invoke-virtual {p2, v5, p1, v2}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object p1

    iget v0, p1, Lʽⁱ/ˋᵔ;->ʽ:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iput v0, p0, Lʻʿ/ﾞʻ;->ⁱˊ:I

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v3, :cond_5

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v2
.end method

.method public final ﹳٴ(Lʻʿ/ﹳٴ;)Z
    .locals 8

    .prologue
    iget-object v0, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iget-object v1, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    if-nez v0, :cond_0

    iget v0, p0, Lʻʿ/ﾞʻ;->ⁱˊ:I

    iget p1, p1, Lʻʿ/ﹳٴ;->ʽ:I

    if-eq v0, p1, :cond_8

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lʻʿ/ﾞʻ;->ʽ:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p1, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget-object v3, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    iget-wide v4, v0, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-wide v6, p1, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    if-ge v3, v1, :cond_4

    goto :goto_1

    :cond_4
    if-le v3, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v0, v0, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-gt v1, v2, :cond_7

    if-ne v1, v2, :cond_8

    iget p1, p1, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-le v0, p1, :cond_8

    goto :goto_0

    :cond_6
    iget p1, v0, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-le p1, v2, :cond_8

    :cond_7
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
