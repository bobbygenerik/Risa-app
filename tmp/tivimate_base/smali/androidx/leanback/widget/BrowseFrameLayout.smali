.class public Landroidx/leanback/widget/BrowseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public ʽʽ:Landroid/view/View$OnKeyListener;

.field public ʾˋ:Landroidx/leanback/widget/ˆʾ;

.field public ᴵˊ:Landroidx/leanback/widget/ʼˎ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ʽʽ:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ʾˋ:Landroidx/leanback/widget/ˆʾ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/ˆʾ;->ˉˆ(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOnChildFocusListener()Landroidx/leanback/widget/ʼˎ;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ᴵˊ:Landroidx/leanback/widget/ʼˎ;

    return-object v0
.end method

.method public getOnFocusSearchListener()Landroidx/leanback/widget/ˆʾ;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ʾˋ:Landroidx/leanback/widget/ˆʾ;

    return-object v0
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ᴵˊ:Landroidx/leanback/widget/ʼˎ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/ʼˎ;->ﹳᐧ(ILandroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnChildFocusListener(Landroidx/leanback/widget/ʼˎ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ᴵˊ:Landroidx/leanback/widget/ʼˎ;

    return-void
.end method

.method public setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ʽʽ:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnFocusSearchListener(Landroidx/leanback/widget/ˆʾ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->ʾˋ:Landroidx/leanback/widget/ˆʾ;

    return-void
.end method
