.class public final Lיי/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ˑﹳ:I

.field public ᵎﹶ:J

.field public ᵔᵢ:J

.field public ⁱˊ:Z

.field public final ﹳٴ:Lˊﾞ/ٴᵢ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(JZI)V
    .locals 9

    .prologue
    iget-wide v0, p0, Lיי/ˉʿ;->ᵔᵢ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lיי/ˉʿ;->ˑﹳ:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lיי/ˉʿ;->ⁱˊ:Z

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lיי/ˉʿ;->ᵎﹶ:J

    sub-long v0, p1, v0

    long-to-int v6, v0

    iget-boolean v5, p0, Lיי/ˉʿ;->ˈ:Z

    iget-wide v3, p0, Lיי/ˉʿ;->ᵔᵢ:J

    const/4 v8, 0x0

    iget-object v2, p0, Lיי/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    move v7, p4

    invoke-interface/range {v2 .. v8}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :cond_1
    iget p3, p0, Lיי/ˉʿ;->ˑﹳ:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2

    iput-wide p1, p0, Lיי/ˉʿ;->ᵎﹶ:J

    :cond_2
    return-void
.end method

.method public final ﹳٴ([BII)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lיי/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lיי/ˉʿ;->ﾞᴵ:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lיי/ˉʿ;->ˈ:Z

    iput-boolean p2, p0, Lיי/ˉʿ;->ʽ:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr p3, v1

    iput p3, p0, Lיי/ˉʿ;->ﾞᴵ:I

    :cond_2
    return-void
.end method
