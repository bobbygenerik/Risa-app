.class public final Lʽˊ/ـˆ;
.super Lʽˊ/ᵔﹳ;
.source "SourceFile"


# instance fields
.field public final ˑﹳ:I

.field public final ᵎﹶ:Lcom/google/android/material/datepicker/ˉʿ;

.field public ﾞᴵ:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lʽˊ/ʼᐧ;I)V
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lʽˊ/ᵔﹳ;-><init>(Lʽˊ/ʼᐧ;)V

    const p1, 0x7f0800b5

    iput p1, p0, Lʽˊ/ـˆ;->ˑﹳ:I

    new-instance p1, Lcom/google/android/material/datepicker/ˉʿ;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʽˊ/ـˆ;->ᵎﹶ:Lcom/google/android/material/datepicker/ˉʿ;

    if-eqz p2, :cond_0

    iput p2, p0, Lʽˊ/ـˆ;->ˑﹳ:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʽ()I
    .locals 1

    const v0, 0x7f130192

    return v0
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˈ()I
    .locals 1

    iget v0, p0, Lʽˊ/ـˆ;->ˑﹳ:I

    return v0
.end method

.method public final ٴﹶ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final ᵔﹳ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    return-void
.end method

.method public final ⁱˊ()V
    .locals 0

    invoke-virtual {p0}, Lʽˊ/ᵔﹳ;->ʼᐧ()V

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    invoke-virtual {p0}, Lʽˊ/ᵔﹳ;->ʼᐧ()V

    return-void
.end method

.method public final ﾞᴵ()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ـˆ;->ᵎﹶ:Lcom/google/android/material/datepicker/ˉʿ;

    return-object v0
.end method
