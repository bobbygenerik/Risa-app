.class public final Lˉˆ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lᐧﹳ/ʽ;

.field public final ﹳٴ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ـˆ;->ﹳٴ:Landroid/widget/TextView;

    new-instance v0, Lᐧﹳ/ʽ;

    invoke-direct {v0, p1}, Lᐧﹳ/ʽ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ـˆ;->ⁱˊ:Lᐧﹳ/ʽ;

    return-void
.end method


# virtual methods
.method public final ʽ(Z)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ـˆ;->ⁱˊ:Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˋ/ٴﹶ;

    invoke-virtual {v0, p1}, Lﹳˋ/ٴﹶ;->ٴᵢ(Z)V

    return-void
.end method

.method public final ˈ(Z)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ـˆ;->ⁱˊ:Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˋ/ٴﹶ;

    invoke-virtual {v0, p1}, Lﹳˋ/ٴﹶ;->ᵎⁱ(Z)V

    return-void
.end method

.method public final ⁱˊ(Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ـˆ;->ﹳٴ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lᵎﹶ/ﹳٴ;->ʼˎ:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lˉˆ/ـˆ;->ˈ(Z)V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final ﹳٴ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Lˉˆ/ـˆ;->ⁱˊ:Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˋ/ٴﹶ;

    invoke-virtual {v0, p1}, Lﹳˋ/ٴﹶ;->ـˆ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method
