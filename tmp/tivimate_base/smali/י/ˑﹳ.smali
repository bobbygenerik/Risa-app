.class public abstract Lי/ˑﹳ;
.super Landroidx/leanback/widget/picker/Picker;
.source "SourceFile"


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/16 v3, 0x10

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    invoke-virtual {p0}, Lי/ˑﹳ;->performClick()Z

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroidx/leanback/widget/picker/Picker;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getPin()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/picker/Picker;->ﹳٴ(I)Lי/ˈ;

    move-result-object v3

    iget v3, v3, Lי/ˈ;->ﹳٴ:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/Picker;->setSelectedColumn(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public setNumberOfColumns(I)V
    .locals 5

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Lי/ˈ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lי/ˈ;->ⁱˊ:I

    const/16 v4, 0x9

    iput v4, v3, Lי/ˈ;->ʽ:I

    const-string v4, "%d"

    iput-object v4, v3, Lי/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    return-void
.end method
