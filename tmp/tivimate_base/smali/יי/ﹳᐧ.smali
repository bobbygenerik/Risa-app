.class public final Lיי/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Z

.field public ʽ:Z

.field public ˆʾ:Z

.field public ˈ:I

.field public ˉʿ:Z

.field public ˑﹳ:J

.field public ٴﹶ:J

.field public ᵎﹶ:Z

.field public ᵔᵢ:Z

.field public ⁱˊ:J

.field public final ﹳٴ:Lˊﾞ/ٴᵢ;

.field public ﾞʻ:J

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ﹳᐧ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(I)V
    .locals 9

    .prologue
    iget-wide v1, p0, Lיי/ﹳᐧ;->ﾞʻ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lיי/ﹳᐧ;->ⁱˊ:J

    iget-wide v5, p0, Lיי/ﹳᐧ;->ٴﹶ:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v3

    iget-boolean v3, p0, Lיי/ﹳᐧ;->ˉʿ:Z

    sub-long v5, v7, v5

    long-to-int v4, v5

    iget-object v0, p0, Lיי/ﹳᐧ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :cond_1
    :goto_0
    return-void
.end method
