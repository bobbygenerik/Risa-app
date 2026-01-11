.class public final Lٴᴵ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lٴᴵ/ᵔﹳ;->ﹳٴ:J

    iput-wide p3, p0, Lٴᴵ/ᵔﹳ;->ⁱˊ:J

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

    const-class v2, Lٴᴵ/ᵔﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lٴᴵ/ᵔﹳ;

    iget-wide v2, p0, Lٴᴵ/ᵔﹳ;->ﹳٴ:J

    iget-wide v4, p1, Lٴᴵ/ᵔﹳ;->ﹳٴ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lٴᴵ/ᵔﹳ;->ⁱˊ:J

    iget-wide v4, p1, Lٴᴵ/ᵔﹳ;->ⁱˊ:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lٴᴵ/ᵔﹳ;->ﹳٴ:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lٴᴵ/ᵔﹳ;->ⁱˊ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
