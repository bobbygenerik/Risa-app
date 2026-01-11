.class public Landroidx/leanback/widget/SearchEditText;
.super Landroidx/leanback/widget/ʾˊ;
.source "SourceFile"


# instance fields
.field public ˉٴ:Landroidx/leanback/widget/ﹳﹳ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ʾˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/SearchEditText;->ˉٴ:Landroidx/leanback/widget/ﹳﹳ;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/widget/ʾˊ;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    return-void
.end method

.method public setOnKeyboardDismissListener(Landroidx/leanback/widget/ﹳﹳ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText;->ˉٴ:Landroidx/leanback/widget/ﹳﹳ;

    return-void
.end method
