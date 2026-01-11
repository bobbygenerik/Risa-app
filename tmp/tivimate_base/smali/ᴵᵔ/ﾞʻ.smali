.class public final Lᴵᵔ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lᴵᵔ/ˉʿ;

.field public ⁱˊ:Z

.field public ﹳٴ:J


# direct methods
.method public constructor <init>(Lᴵᵔ/ˉʿ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵᵔ/ﾞʻ;->ʽ:Lᴵᵔ/ˉʿ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᴵᵔ/ﾞʻ;->ʽ:Lᴵᵔ/ˉʿ;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Cannot reverse infinite animator set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-wide v1, p0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v0

    iget-wide v2, p0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    iput-boolean p1, p0, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    :cond_2
    return-void
.end method
