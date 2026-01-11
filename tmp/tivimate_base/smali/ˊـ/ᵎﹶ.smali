.class public final Lˊـ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʼᐧ:Landroid/text/Layout$Alignment;

.field public ʽ:Z

.field public ʽﹳ:Ljava/lang/String;

.field public ˆʾ:I

.field public ˈ:I

.field public ˉʿ:I

.field public ˉˆ:Landroid/text/Layout$Alignment;

.field public ˏי:Ljava/lang/String;

.field public ˑﹳ:Z

.field public יـ:F

.field public ٴﹶ:F

.field public ᵎﹶ:I

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:I

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/lang/String;

.field public ﹳᐧ:Lˊـ/ⁱˊ;

.field public ﾞʻ:Ljava/lang/String;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˊـ/ᵎﹶ;->ﾞᴵ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵎﹶ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔᵢ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ʼˎ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ˆʾ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ˉʿ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔʾ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔﹳ:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lˊـ/ᵎﹶ;->יـ:F

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˊـ/ᵎﹶ;)V
    .locals 4

    .prologue
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lˊـ/ᵎﹶ;->ʽ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lˊـ/ᵎﹶ;->ʽ:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lˊـ/ᵎﹶ;->ⁱˊ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ⁱˊ:I

    iput-boolean v1, p0, Lˊـ/ᵎﹶ;->ʽ:Z

    :cond_0
    iget v0, p0, Lˊـ/ᵎﹶ;->ᵔᵢ:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lˊـ/ᵎﹶ;->ᵔᵢ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔᵢ:I

    :cond_1
    iget v0, p0, Lˊـ/ᵎﹶ;->ʼˎ:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lˊـ/ᵎﹶ;->ʼˎ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ʼˎ:I

    :cond_2
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lˊـ/ᵎﹶ;->ﾞᴵ:I

    if-ne v0, v2, :cond_4

    iget v0, p1, Lˊـ/ᵎﹶ;->ﾞᴵ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ﾞᴵ:I

    :cond_4
    iget v0, p0, Lˊـ/ᵎﹶ;->ᵎﹶ:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lˊـ/ᵎﹶ;->ᵎﹶ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵎﹶ:I

    :cond_5
    iget v0, p0, Lˊـ/ᵎﹶ;->ᵔʾ:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lˊـ/ᵎﹶ;->ᵔʾ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔʾ:I

    :cond_6
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ˉˆ:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ˉˆ:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ˉˆ:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ʼᐧ:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ʼᐧ:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ʼᐧ:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Lˊـ/ᵎﹶ;->ᵔﹳ:I

    if-ne v0, v2, :cond_9

    iget v0, p1, Lˊـ/ᵎﹶ;->ᵔﹳ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ᵔﹳ:I

    :cond_9
    iget v0, p0, Lˊـ/ᵎﹶ;->ˆʾ:I

    if-ne v0, v2, :cond_a

    iget v0, p1, Lˊـ/ᵎﹶ;->ˆʾ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ˆʾ:I

    iget v0, p1, Lˊـ/ᵎﹶ;->ٴﹶ:F

    iput v0, p0, Lˊـ/ᵎﹶ;->ٴﹶ:F

    :cond_a
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ﹳᐧ:Lˊـ/ⁱˊ;

    if-nez v0, :cond_b

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ﹳᐧ:Lˊـ/ⁱˊ;

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ﹳᐧ:Lˊـ/ⁱˊ;

    :cond_b
    iget v0, p0, Lˊـ/ᵎﹶ;->יـ:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_c

    iget v0, p1, Lˊـ/ᵎﹶ;->יـ:F

    iput v0, p0, Lˊـ/ᵎﹶ;->יـ:F

    :cond_c
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ˏי:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ˏי:Ljava/lang/String;

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ˏי:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lˊـ/ᵎﹶ;->ʽﹳ:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p1, Lˊـ/ᵎﹶ;->ʽﹳ:Ljava/lang/String;

    iput-object v0, p0, Lˊـ/ᵎﹶ;->ʽﹳ:Ljava/lang/String;

    :cond_e
    iget-boolean v0, p0, Lˊـ/ᵎﹶ;->ˑﹳ:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lˊـ/ᵎﹶ;->ˑﹳ:Z

    if-eqz v0, :cond_f

    iget v0, p1, Lˊـ/ᵎﹶ;->ˈ:I

    iput v0, p0, Lˊـ/ᵎﹶ;->ˈ:I

    iput-boolean v1, p0, Lˊـ/ᵎﹶ;->ˑﹳ:Z

    :cond_f
    iget v0, p0, Lˊـ/ᵎﹶ;->ˉʿ:I

    if-ne v0, v2, :cond_10

    iget p1, p1, Lˊـ/ᵎﹶ;->ˉʿ:I

    if-eq p1, v2, :cond_10

    iput p1, p0, Lˊـ/ᵎﹶ;->ˉʿ:I

    :cond_10
    return-void
.end method
