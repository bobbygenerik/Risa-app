.class public final Lˉʽ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ˊʻ;


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˉʽ/ﹳٴ;->ﹳٴ:J

    iput-wide p3, p0, Lˉʽ/ﹳٴ;->ⁱˊ:J

    iput-wide p5, p0, Lˉʽ/ﹳٴ;->ʽ:J

    iput-wide p7, p0, Lˉʽ/ﹳٴ;->ˈ:J

    iput-wide p9, p0, Lˉʽ/ﹳٴ;->ˑﹳ:J

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

    const-class v2, Lˉʽ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˉʽ/ﹳٴ;

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ﹳٴ:J

    iget-wide v4, p1, Lˉʽ/ﹳٴ;->ﹳٴ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ⁱˊ:J

    iget-wide v4, p1, Lˉʽ/ﹳٴ;->ⁱˊ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ʽ:J

    iget-wide v4, p1, Lˉʽ/ﹳٴ;->ʽ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ˈ:J

    iget-wide v4, p1, Lˉʽ/ﹳٴ;->ˈ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ˑﹳ:J

    iget-wide v4, p1, Lˉʽ/ﹳٴ;->ˑﹳ:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lˉʽ/ﹳٴ;->ﹳٴ:J

    invoke-static {v0, v1}, Lˈˋ/ʾˊ;->ʾᵎ(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ⁱˊ:J

    invoke-static {v1, v2}, Lˈˋ/ʾˊ;->ʾᵎ(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ʽ:J

    invoke-static {v2, v3}, Lˈˋ/ʾˊ;->ʾᵎ(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ˈ:J

    invoke-static {v1, v2}, Lˈˋ/ʾˊ;->ʾᵎ(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lˉʽ/ﹳٴ;->ˑﹳ:J

    invoke-static {v2, v3}, Lˈˋ/ʾˊ;->ʾᵎ(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Motion photo metadata: photoStartPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ⁱˊ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photoPresentationTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ʽ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉʽ/ﹳٴ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic ʽ()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ⁱˊ()Lʽⁱ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ﹳٴ(Lʽⁱ/ˈٴ;)V
    .locals 0

    return-void
.end method
