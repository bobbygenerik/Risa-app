.class public final Lﾞˏ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:J

.field public final ᵎﹶ:[Z

.field public ᵔᵢ:I

.field public ⁱˊ:J

.field public ﹳٴ:J

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lﾞˏ/ˑﹳ;->ᵎﹶ:[Z

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ˈ:J

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ˑﹳ:J

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ﾞᴵ:J

    const/4 v0, 0x0

    iput v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    iget-object v1, p0, Lﾞˏ/ˑﹳ;->ᵎﹶ:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final ⁱˊ(J)V
    .locals 10

    .prologue
    iget-wide v0, p0, Lﾞˏ/ˑﹳ;->ˈ:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    iput-wide p1, p0, Lﾞˏ/ˑﹳ;->ﹳٴ:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-wide v0, p0, Lﾞˏ/ˑﹳ;->ﹳٴ:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ⁱˊ:J

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ﾞᴵ:J

    iput-wide v3, p0, Lﾞˏ/ˑﹳ;->ˑﹳ:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lﾞˏ/ˑﹳ;->ʽ:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xf

    rem-long/2addr v0, v7

    long-to-int v0, v0

    iget-wide v1, p0, Lﾞˏ/ˑﹳ;->ⁱˊ:J

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    cmp-long v1, v1, v7

    iget-object v2, p0, Lﾞˏ/ˑﹳ;->ᵎﹶ:[Z

    const/4 v7, 0x1

    if-gtz v1, :cond_2

    iget-wide v8, p0, Lﾞˏ/ˑﹳ;->ˑﹳ:J

    add-long/2addr v8, v3

    iput-wide v8, p0, Lﾞˏ/ˑﹳ;->ˑﹳ:J

    iget-wide v8, p0, Lﾞˏ/ˑﹳ;->ﾞᴵ:J

    add-long/2addr v8, v5

    iput-wide v8, p0, Lﾞˏ/ˑﹳ;->ﾞᴵ:J

    aget-boolean v1, v2, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aput-boolean v1, v2, v0

    iget v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    sub-int/2addr v0, v7

    iput v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    goto :goto_0

    :cond_2
    aget-boolean v1, v2, v0

    if-nez v1, :cond_3

    aput-boolean v7, v2, v0

    iget v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    add-int/2addr v0, v7

    iput v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    :cond_3
    :goto_0
    iget-wide v0, p0, Lﾞˏ/ˑﹳ;->ˈ:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lﾞˏ/ˑﹳ;->ˈ:J

    iput-wide p1, p0, Lﾞˏ/ˑﹳ;->ʽ:J

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lﾞˏ/ˑﹳ;->ˈ:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lﾞˏ/ˑﹳ;->ᵔᵢ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
