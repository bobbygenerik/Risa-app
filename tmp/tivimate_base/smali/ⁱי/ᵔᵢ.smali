.class public final Lⁱי/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public ʼᐧ:J

.field public final ʽ:J

.field public ˆʾ:J

.field public final ˈ:J

.field public ˉʿ:F

.field public ˉˆ:J

.field public ˑﹳ:J

.field public ٴﹶ:F

.field public ᵎﹶ:J

.field public ᵔʾ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:F

.field public final ﹳٴ:F

.field public ﾞʻ:F

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(FFJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lⁱי/ᵔᵢ;->ﹳٴ:F

    iput p2, p0, Lⁱי/ᵔᵢ;->ⁱˊ:F

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ʽ:J

    iput-wide p5, p0, Lⁱי/ᵔᵢ;->ˈ:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ˑﹳ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ﾞᴵ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ᵔᵢ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ʼˎ:J

    iput p1, p0, Lⁱי/ᵔᵢ;->ﾞʻ:F

    iput p2, p0, Lⁱי/ᵔᵢ;->ٴﹶ:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lⁱי/ᵔᵢ;->ˉʿ:F

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ᵔʾ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ᵎﹶ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ˆʾ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ˉˆ:J

    iput-wide p3, p0, Lⁱי/ᵔᵢ;->ʼᐧ:J

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget-wide v0, p0, Lⁱי/ᵔᵢ;->ˑﹳ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lⁱי/ᵔᵢ;->ﾞᴵ:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lⁱי/ᵔᵢ;->ᵔᵢ:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lⁱי/ᵔᵢ;->ʼˎ:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    iget-wide v0, p0, Lⁱי/ᵔᵢ;->ᵎﹶ:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lⁱי/ᵔᵢ;->ᵎﹶ:J

    iput-wide v4, p0, Lⁱי/ᵔᵢ;->ˆʾ:J

    iput-wide v2, p0, Lⁱי/ᵔᵢ;->ˉˆ:J

    iput-wide v2, p0, Lⁱי/ᵔᵢ;->ʼᐧ:J

    iput-wide v2, p0, Lⁱי/ᵔᵢ;->ᵔʾ:J

    return-void
.end method
