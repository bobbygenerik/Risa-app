.class public final Lʻʿ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:J

.field public final ʽ:I

.field public final ˆʾ:J

.field public final ˈ:Lﹳᵢ/ᵢˏ;

.field public final ˑﹳ:J

.field public final ᵎﹶ:I

.field public final ᵔᵢ:Lﹳᵢ/ᵢˏ;

.field public final ⁱˊ:Lʽⁱ/ʼˈ;

.field public final ﹳٴ:J

.field public final ﾞᴵ:Lʽⁱ/ʼˈ;


# direct methods
.method public constructor <init>(JLʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;JLʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lʻʿ/ﹳٴ;->ﹳٴ:J

    iput-object p3, p0, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iput p4, p0, Lʻʿ/ﹳٴ;->ʽ:I

    iput-object p5, p0, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iput-wide p6, p0, Lʻʿ/ﹳٴ;->ˑﹳ:J

    iput-object p8, p0, Lʻʿ/ﹳٴ;->ﾞᴵ:Lʽⁱ/ʼˈ;

    iput p9, p0, Lʻʿ/ﹳٴ;->ᵎﹶ:I

    iput-object p10, p0, Lʻʿ/ﹳٴ;->ᵔᵢ:Lﹳᵢ/ᵢˏ;

    iput-wide p11, p0, Lʻʿ/ﹳٴ;->ʼˎ:J

    iput-wide p13, p0, Lʻʿ/ﹳٴ;->ˆʾ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lʻʿ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʻʿ/ﹳٴ;

    iget-wide v2, p0, Lʻʿ/ﹳٴ;->ﹳٴ:J

    iget-wide v4, p1, Lʻʿ/ﹳٴ;->ﹳٴ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lʻʿ/ﹳٴ;->ʽ:I

    iget v3, p1, Lʻʿ/ﹳٴ;->ʽ:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lʻʿ/ﹳٴ;->ˑﹳ:J

    iget-wide v4, p1, Lʻʿ/ﹳٴ;->ˑﹳ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lʻʿ/ﹳٴ;->ᵎﹶ:I

    iget v3, p1, Lʻʿ/ﹳٴ;->ᵎﹶ:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lʻʿ/ﹳٴ;->ʼˎ:J

    iget-wide v4, p1, Lʻʿ/ﹳٴ;->ʼˎ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lʻʿ/ﹳٴ;->ˆʾ:J

    iget-wide v4, p1, Lʻʿ/ﹳٴ;->ˆʾ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʻʿ/ﹳٴ;->ﾞᴵ:Lʽⁱ/ʼˈ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ﾞᴵ:Lʽⁱ/ʼˈ;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʻʿ/ﹳٴ;->ᵔᵢ:Lﹳᵢ/ᵢˏ;

    iget-object p1, p1, Lʻʿ/ﹳٴ;->ᵔᵢ:Lﹳᵢ/ᵢˏ;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget-wide v0, p0, Lʻʿ/ﹳٴ;->ﹳٴ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lʻʿ/ﹳٴ;->ʽ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lʻʿ/ﹳٴ;->ˑﹳ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lʻʿ/ﹳٴ;->ᵎﹶ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lʻʿ/ﹳٴ;->ʼˎ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lʻʿ/ﹳٴ;->ˆʾ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget-object v7, p0, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    aput-object v7, v6, v0

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    aput-object v1, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lʻʿ/ﹳٴ;->ﾞᴵ:Lʽⁱ/ʼˈ;

    aput-object v1, v6, v0

    const/4 v0, 0x6

    aput-object v3, v6, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lʻʿ/ﹳٴ;->ᵔᵢ:Lﹳᵢ/ᵢˏ;

    aput-object v1, v6, v0

    const/16 v0, 0x8

    aput-object v4, v6, v0

    const/16 v0, 0x9

    aput-object v5, v6, v0

    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
