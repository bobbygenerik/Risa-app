.class public final Lʻˆ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:J

.field public ﹳٴ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lʻˆ/ﹳٴ;->ﹳٴ:J

    iput-wide v0, p0, Lʻˆ/ﹳٴ;->ⁱˊ:J

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lʻˆ/ﹳٴ;->ﹳٴ:J

    iput-wide p4, p0, Lʻˆ/ﹳٴ;->ⁱˊ:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lʻˆ/ﹳٴ;->ﹳٴ:J

    iput-wide p3, p0, Lʻˆ/ﹳٴ;->ⁱˊ:J

    return-void
.end method


# virtual methods
.method public ﹳٴ(J)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lʻˆ/ﹳٴ;->ⁱˊ:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lʻˆ/ﹳٴ;->ⁱˊ:J

    iget-wide p1, p0, Lʻˆ/ﹳٴ;->ﹳٴ:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    :cond_0
    return-void
.end method
