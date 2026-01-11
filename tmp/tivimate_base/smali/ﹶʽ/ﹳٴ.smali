.class public final Lﹶʽ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    iput-wide p3, p0, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lﹶʽ/ﹳٴ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lﹶʽ/ﹳٴ;

    iget-wide v3, p0, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    iget-wide v5, p1, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    iget-wide v5, p1, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
