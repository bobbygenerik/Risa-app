.class public Lˉˆ/ʻٴ;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ʼᐧ;
.implements Lﹳـ/ﾞʻ;


# instance fields
.field public final ʽʽ:Lˉˆ/ʾˋ;

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public final ˈٴ:Lﹳـ/ˆʾ;

.field public ˊʻ:Lˉˆ/ʽﹳ;

.field public final ᴵˊ:Lˉˆ/ᴵˑ;

.field public final ᴵᵔ:Lˉˆ/ʾˋ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    new-instance p1, Lˉˆ/ʾˋ;

    invoke-direct {p1}, Lˉˆ/ʾˋ;-><init>()V

    iput-object p0, p1, Lˉˆ/ʾˋ;->ⁱˊ:Landroid/view/View;

    iput-object p1, p0, Lˉˆ/ʻٴ;->ʽʽ:Lˉˆ/ʾˋ;

    new-instance p1, Lﹳـ/ˆʾ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ʻٴ;->ˈٴ:Lﹳـ/ˆʾ;

    new-instance p1, Lˉˆ/ʾˋ;

    invoke-direct {p1, p0}, Lˉˆ/ʾˋ;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lˉˆ/ʻٴ;->ᴵᵔ:Lˉˆ/ʾˋ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/ʾˋ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p2

    instance-of p3, p2, Landroid/text/method/NumberKeyListener;

    if-nez p3, :cond_1

    invoke-super {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result p3

    invoke-super {p0}, Landroid/widget/EditText;->isClickable()Z

    move-result v0

    invoke-super {p0}, Landroid/widget/EditText;->isLongClickable()Z

    move-result v1

    invoke-super {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    invoke-virtual {p1, p2}, Lˉˆ/ʾˋ;->ﹳٴ(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-super {p0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    invoke-super {p0, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-super {p0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getSuperCaller()Lˉˆ/ʽﹳ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʻٴ;->ˊʻ:Lˉˆ/ʽﹳ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ʽﹳ;

    invoke-direct {v0, p0}, Lˉˆ/ʽﹳ;-><init>(Lˉˆ/ʻٴ;)V

    iput-object v0, p0, Lˉˆ/ʻٴ;->ˊʻ:Lˉˆ/ʽﹳ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ʻٴ;->ˊʻ:Lˉˆ/ʽﹳ;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ᴵˑ(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ˆʾ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lˉˆ/ʻٴ;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lˉˆ/ʻٴ;->ʽʽ:Lˉˆ/ʾˋ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lˉˆ/ʾˋ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    iget-object v0, v0, Lˉˆ/ʾˋ;->ⁱˊ:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lˉˆ/ˋᵔ;->ﹳٴ(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lˉˆ/ʻٴ;->getSuperCaller()Lˉˆ/ʽﹳ;

    move-result-object v0

    iget-object v0, v0, Lˉˆ/ʽﹳ;->ﹳٴ:Lˉˆ/ʻٴ;

    invoke-super {v0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .prologue
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p0}, Lˉˆ/ᴵˑ;->ᵔᵢ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʼʼ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_2

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ᵎﹶ(Lˉˆ/ʻٴ;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Lʼˈ/ⁱˊ;->ⁱˊ(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    new-instance v2, Lʻʿ/ˈ;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    const/16 v3, 0x19

    if-lt v1, v3, :cond_0

    new-instance v1, Lʼˈ/ʽ;

    invoke-direct {v1, v0, v2}, Lʼˈ/ʽ;-><init>(Landroid/view/inputmethod/InputConnection;Lʻʿ/ˈ;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lʼˈ/ⁱˊ;->ﹳٴ(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lʼˈ/ˈ;

    invoke-direct {v1, v0, v2}, Lʼˈ/ˈ;-><init>(Landroid/view/inputmethod/InputConnection;Lʻʿ/ˈ;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lˉˆ/ʻٴ;->ᴵᵔ:Lˉˆ/ʾˋ;

    invoke-virtual {v1, v0, p1}, Lˉˆ/ʾˋ;->ʽ(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Lﹶᐧ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_5

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ᵎﹶ(Lˉˆ/ʻٴ;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t handle drop: no activity: view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveContent"

    nop

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    invoke-static {p1, p0, v0}, Lˉˆ/ˈٴ;->ﹳٴ(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result v3

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return v2

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 6

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_5

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ᵎﹶ(Lˉˆ/ʻٴ;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const v2, 0x1020022

    if-eq p1, v2, :cond_0

    const v3, 0x1020031

    if-eq p1, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_4

    if-lt v0, v1, :cond_2

    new-instance v0, Lʻʿ/ﹳᐧ;

    invoke-direct {v0, v3, v4}, Lʻʿ/ﹳᐧ;-><init>(Landroid/content/ClipData;I)V

    goto :goto_1

    :cond_2
    new-instance v0, Lˋᵔ/ˑﹳ;

    invoke-direct {v0}, Lˋᵔ/ˑﹳ;-><init>()V

    iput-object v3, v0, Lˋᵔ/ˑﹳ;->ⁱˊ:Landroid/content/ClipData;

    iput v4, v0, Lˋᵔ/ˑﹳ;->ʽ:I

    :goto_1
    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    invoke-interface {v0, p1}, Lˋᵔ/ˈ;->ﾞᴵ(I)V

    invoke-interface {v0}, Lˋᵔ/ˈ;->build()Lˋᵔ/ᵎﹶ;

    move-result-object p1

    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ʼˎ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    :cond_4
    return v4

    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lﹳٴ/ﹳٴ;->ˉـ(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵᵔ:Lˉˆ/ʾˋ;

    invoke-virtual {v0, p1}, Lˉˆ/ʾˋ;->ˈ(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵᵔ:Lˉˆ/ʾˋ;

    invoke-virtual {v0, p1}, Lˉˆ/ʾˋ;->ﹳٴ(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʻٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lˉˆ/ʻٴ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ᵎﹶ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ʽʽ:Lˉˆ/ʾˋ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lˉˆ/ʾˋ;->ʽ:Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lˉˆ/ʻٴ;->getSuperCaller()Lˉˆ/ʽﹳ;

    move-result-object v0

    iget-object v0, v0, Lˉˆ/ʽﹳ;->ﹳٴ:Lˉˆ/ʻٴ;

    invoke-super {v0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public final ﹳٴ(Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻٴ;->ˈٴ:Lﹳـ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lﹳـ/ˆʾ;->ﹳٴ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    move-result-object p1

    return-object p1
.end method
