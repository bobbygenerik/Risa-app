.class public final Lᵔᵢ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Landroid/view/Window$Callback;

.field public ˈٴ:Z

.field public ᴵˊ:Z

.field public final synthetic ᴵᵔ:Lᵔᵢ/ᵢˏ;


# direct methods
.method public constructor <init>(Lᵔᵢ/ᵢˏ;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ʻٴ;->ʽʽ:Z

    iget-object v1, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵢˏ;->ˏי(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    invoke-virtual {v2}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v3, v2, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    if-nez v3, :cond_1

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lᵔᵢ/ˉٴ;->ˈٴ:Lᵔʾ/ˆʾ;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lᵔʾ/ˆʾ;->setQwertyMode(Z)V

    invoke-virtual {v3, v0, p1, v4}, Lᵔʾ/ˆʾ;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move p1, v1

    goto :goto_3

    :cond_4
    iget-object v0, v2, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Lᵔᵢ/ᵢˏ;->ˊʻ(Lᵔᵢ/ʼʼ;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, v2, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lᵔᵢ/ʼʼ;->ﾞʻ:Z

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    if-nez v0, :cond_6

    invoke-virtual {v2, v4}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Lᵔᵢ/ᵢˏ;->ˊʻ(Lᵔᵢ/ʼʼ;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v0, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v4

    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ʻٴ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    if-nez p1, :cond_0

    instance-of v0, p2, Lᵔʾ/ˆʾ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lᵔᵢ/ʻٴ;->ⁱˊ(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    invoke-virtual {p1}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object p1, p1, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lᵔᵢ/ᵎⁱ;->יـ:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lᵔᵢ/ᵎⁱ;->ﹳᐧ:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Lᵔᵢ/ᵎⁱ;->ﹳᐧ:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ʻٴ;->ˈٴ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lᵔᵢ/ʻٴ;->ʽ(ILandroid/view/Menu;)V

    const/16 p2, 0x6c

    const/4 v0, 0x0

    iget-object v1, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object p1, v1, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz p1, :cond_4

    iget-object p2, p1, Lᵔᵢ/ᵎⁱ;->יـ:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lᵔᵢ/ᵎⁱ;->ﹳᐧ:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Lᵔᵢ/ᵎⁱ;->ﹳᐧ:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v1, p1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object p1

    iget-boolean p2, p1, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-eqz p2, :cond_4

    invoke-virtual {v1, p1, v0}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lˉʿ/ˉʿ;->ﹳٴ(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    instance-of v0, p3, Lᵔʾ/ˆʾ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lᵔʾ/ˆʾ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lᵔʾ/ˆʾ;->ʾᵎ:Z

    :cond_2
    iget-object v2, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Lᵔʾ/ˆʾ;->ʾᵎ:Z

    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-object v0, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lᵔᵢ/ʻٴ;->ˈ(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lᵔᵢ/ʻٴ;->ˈ(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lˉʿ/ٴﹶ;->ﹳٴ(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 9

    .prologue
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ᴵᵔ:Lᵔᵢ/ᵢˏ;

    iget-boolean v1, v0, Lᵔᵢ/ᵢˏ;->ʿᵢ:Z

    if-eqz v1, :cond_13

    if-eqz p2, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance p2, Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Lˏˆ/ﹳٴ;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lˉʿ/ﹳٴ;->ﹳٴ()V

    :cond_1
    new-instance p1, Lˑʼ/ᵎˊ;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {p1, v0, p2, v2, v3}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v6, v2, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lᵔᵢ/ˉٴ;->ﹳٴ()V

    :cond_2
    iget-object v6, v2, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v6, v2, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->ˑﹳ()V

    new-instance v6, Lᵔᵢ/ˉٴ;

    iget-object v7, v2, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v2, v7, p1}, Lᵔᵢ/ˉٴ;-><init>(Lᵔᵢ/ᵎⁱ;Landroid/content/Context;Lˑʼ/ᵎˊ;)V

    iget-object v7, v6, Lᵔᵢ/ˉٴ;->ˈٴ:Lᵔʾ/ˆʾ;

    invoke-virtual {v7}, Lᵔʾ/ˆʾ;->ـˆ()V

    :try_start_0
    iget-object v8, v6, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    iget-object v8, v8, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Lˏˆ/ﹳٴ;

    invoke-virtual {v8, v6, v7}, Lˏˆ/ﹳٴ;->ˈٴ(Lˉʿ/ﹳٴ;Landroid/view/Menu;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lᵔʾ/ˆʾ;->ʻٴ()V

    if-eqz v8, :cond_3

    iput-object v6, v2, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    invoke-virtual {v6}, Lᵔᵢ/ˉٴ;->ʼˎ()V

    iget-object v7, v2, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->ʽ(Lˉʿ/ﹳٴ;)V

    invoke-virtual {v2, v4}, Lᵔᵢ/ᵎⁱ;->ʿᵢ(Z)V

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    iput-object v6, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Lᵔʾ/ˆʾ;->ʻٴ()V

    throw p1

    :cond_4
    :goto_1
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-nez v2, :cond_11

    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ʿ:Lˋᵔ/ˋᵔ;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lˋᵔ/ˋᵔ;->ⁱˊ()V

    :cond_5
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lˉʿ/ﹳٴ;->ﹳٴ()V

    :cond_6
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lᵔᵢ/ᵢˏ;->ﹶᐧ:Z

    if-eqz v2, :cond_8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000b

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Lˉʿ/ʽ;

    invoke-direct {v6, v1, v3}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lˉʿ/ʽ;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v6

    :cond_7
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v1, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f04001a

    invoke-direct {v6, v1, v5, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, v0, Lᵔᵢ/ᵢˏ;->ᴵˑ:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v6, v0, Lᵔᵢ/ᵢˏ;->ᴵˑ:Landroid/widget/PopupWindow;

    iget-object v7, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, v0, Lᵔᵢ/ᵢˏ;->ᴵˑ:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f040005

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ᴵˑ:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v1, Lᵔᵢ/ˉˆ;

    invoke-direct {v1, v0, v4}, Lᵔᵢ/ˉˆ;-><init>(Lᵔᵢ/ᵢˏ;I)V

    iput-object v1, v0, Lᵔᵢ/ᵢˏ;->ˉـ:Lᵔᵢ/ˉˆ;

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v6, 0x7f0b004c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v6, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lᵔᵢ/ᵎⁱ;->ᵎᵔ()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_9
    move-object v6, v5

    :goto_2
    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v6

    :goto_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->ﹳٴ()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_b
    :goto_4
    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ʿ:Lˋᵔ/ˋᵔ;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lˋᵔ/ˋᵔ;->ⁱˊ()V

    :cond_c
    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->ˑﹳ()V

    new-instance v1, Lˉʿ/ˈ;

    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lˉʿ/ˈ;->ʽʽ:Landroid/content/Context;

    iput-object v6, v1, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, v1, Lˉʿ/ˈ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    new-instance p1, Lᵔʾ/ˆʾ;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lᵔʾ/ˆʾ;-><init>(Landroid/content/Context;)V

    iput v4, p1, Lᵔʾ/ˆʾ;->ﾞʻ:I

    iput-object p1, v1, Lˉʿ/ˈ;->ˉٴ:Lᵔʾ/ˆʾ;

    iput-object v1, p1, Lᵔʾ/ˆʾ;->ˑﹳ:Lᵔʾ/ᵔᵢ;

    invoke-virtual {p2, v1, p1}, Lˏˆ/ﹳٴ;->ˈٴ(Lˉʿ/ﹳٴ;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lˉʿ/ˈ;->ʼˎ()V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->ʽ(Lˉʿ/ﹳٴ;)V

    iput-object v1, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    iget-boolean p1, v0, Lᵔᵢ/ᵢˏ;->ᵎᵔ:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object p1

    invoke-virtual {p1, v1}, Lˋᵔ/ˋᵔ;->ﹳٴ(F)V

    iput-object p1, v0, Lᵔᵢ/ᵢˏ;->ʿ:Lˋᵔ/ˋᵔ;

    new-instance v1, Lᵔᵢ/ﹳᐧ;

    invoke-direct {v1, v4, v0}, Lᵔᵢ/ﹳᐧ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lˋᵔ/ˋᵔ;->ˈ(Lˋᵔ/ˊˋ;)V

    goto :goto_5

    :cond_d
    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_e
    :goto_5
    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ᴵˑ:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_10

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˉـ:Lᵔᵢ/ˉˆ;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    iput-object v5, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    :cond_10
    :goto_6
    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ᵎⁱ()V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    iput-object p1, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    :cond_11
    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ᵎⁱ()V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz p1, :cond_12

    invoke-virtual {p2, p1}, Lˏˆ/ﹳٴ;->ʽﹳ(Lˉʿ/ﹳٴ;)Lˉʿ/ˑﹳ;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v5

    :cond_13
    :goto_7
    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lˉʿ/ٴﹶ;->ⁱˊ(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public final ʽ(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final ˈ(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lˉʿ/ﾞʻ;->ﹳٴ(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final ⁱˊ(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ʻٴ;->ʾˋ:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lᵔᵢ/ʻٴ;->ᴵˊ:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lᵔᵢ/ʻٴ;->ᴵˊ:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lᵔᵢ/ʻٴ;->ᴵˊ:Z

    throw p1
.end method
