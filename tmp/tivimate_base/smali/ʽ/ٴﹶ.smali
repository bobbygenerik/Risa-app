.class public abstract Lʽ/ٴﹶ;
.super Lˊʻ/ﾞᴵ;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ᴵʼ;
.implements Landroidx/lifecycle/ʼˎ;
.implements Lᵎ/ˑﹳ;


# instance fields
.field public final ʽʽ:Lˑי/ʽ;

.field public final ˆﾞ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ˈٴ:Landroidx/lifecycle/ـˆ;

.field public final ˉٴ:Lʽ/ˆʾ;

.field public ˊʻ:Landroidx/lifecycle/ˏᵢ;

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public final ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ٴᵢ:Lʽ/ʽﹳ;

.field public final ᴵˊ:Lᴵˈ/ᵔᵢ;

.field public final ᴵᵔ:Lـʾ/ᵔﹳ;

.field public final ᵎˊ:Lʽ/ﾞᴵ;

.field public final ᵎⁱ:Lٴʽ/יـ;

.field public final ᵔי:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ᵔٴ:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lˊʻ/ﾞᴵ;-><init>()V

    new-instance v0, Lᴵˈ/ᵔᵢ;

    invoke-direct {v0}, Lᴵˈ/ᵔᵢ;-><init>()V

    iput-object v0, p0, Lʽ/ٴﹶ;->ᴵˊ:Lᴵˈ/ᵔᵢ;

    new-instance v0, Lˑי/ʽ;

    new-instance v1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lˑי/ʽ;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    new-instance v1, Lʿʻ/ⁱˊ;

    new-instance v2, Lיˋ/ˈ;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lʿʻ/ⁱˊ;-><init>(Lᵎ/ˑﹳ;Lיˋ/ˈ;)V

    new-instance v2, Lـʾ/ᵔﹳ;

    invoke-direct {v2, v1}, Lـʾ/ᵔﹳ;-><init>(Lʿʻ/ⁱˊ;)V

    iput-object v2, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    const/4 v1, 0x0

    iput-object v1, p0, Lʽ/ٴﹶ;->ٴᵢ:Lʽ/ʽﹳ;

    new-instance v1, Lʽ/ˆʾ;

    invoke-direct {v1, p0}, Lʽ/ˆʾ;-><init>(Lʽ/ٴﹶ;)V

    iput-object v1, p0, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    new-instance v1, Lٴʽ/יـ;

    new-instance v3, Landroidx/lifecycle/ـˏ;

    const/16 v4, 0xe

    invoke-direct {v3, v4, p0}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3}, Lٴʽ/יـ;-><init>(Landroidx/lifecycle/ـˏ;)V

    iput-object v1, p0, Lʽ/ٴﹶ;->ᵎⁱ:Lٴʽ/יـ;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lʽ/ﾞᴵ;

    invoke-direct {v1, p0}, Lʽ/ﾞᴵ;-><init>(Lʽ/ٴﹶ;)V

    iput-object v1, p0, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ᵔי:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ˆﾞ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lʽ/ٴﹶ;->ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʽ/ٴﹶ;->ˋᵔ:Z

    iput-boolean v1, p0, Lʽ/ٴﹶ;->ˊˋ:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Lʽ/ᵎﹶ;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lʽ/ᵎﹶ;-><init>(Lʽ/ٴﹶ;I)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    new-instance v3, Lʽ/ᵎﹶ;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lʽ/ᵎﹶ;-><init>(Lʽ/ٴﹶ;I)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    new-instance v3, Lʽ/ᵎﹶ;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lʽ/ᵎﹶ;-><init>(Lʽ/ٴﹶ;I)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    invoke-virtual {v2}, Lـʾ/ᵔﹳ;->ﹳᐧ()V

    invoke-static {p0}, Landroidx/lifecycle/ʼˈ;->ⁱˊ(Lᵎ/ˑﹳ;)V

    const/16 v3, 0x17

    if-gt v1, v3, :cond_0

    new-instance v1, Lʽ/ᵎﹶ;

    invoke-direct {v1}, Lʽ/ᵎﹶ;-><init>()V

    iput-object p0, v1, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    :cond_0
    iget-object v0, v2, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    new-instance v1, Lʽ/ˈ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lʽ/ˈ;-><init>(ILjava/lang/Object;)V

    const-string v2, "android:support:activity-result"

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    new-instance v0, Lʽ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lʽ/ˑﹳ;-><init>(Lʽ/ٴﹶ;I)V

    invoke-virtual {p0, v0}, Lʽ/ٴﹶ;->ˈ(Lˈ/ﹳٴ;)V

    return-void
.end method

.method public static synthetic ⁱˊ(Lʽ/ٴﹶ;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    invoke-virtual {v1, v0}, Lʽ/ˆʾ;->ﹳٴ(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lʽ/ﾞᴵ;->ﹳٴ(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ˑﹳ()Lʽ/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lʽ/ʽﹳ;->ﹳٴ()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᵔי:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    invoke-interface {v1, p1}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lـʾ/ᵔﹳ;->יـ(Landroid/os/Bundle;)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵˊ:Lᴵˈ/ᵔᵢ;

    iput-object p0, v0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    iget-object v0, v0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˈ/ﹳٴ;

    invoke-interface {v1}, Lˈ/ﹳٴ;->ﹳٴ()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lˊʻ/ﾞᴵ;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    invoke-static {p0}, Landroidx/lifecycle/ˆﾞ;->ⁱˊ(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .prologue
    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p1, p0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object p1, p1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˑʼ/ˈʿ;

    iget-object p2, p2, Lˑʼ/ˈʿ;->ﹳٴ:Lˑʼ/ʿ;

    invoke-virtual {p2}, Lˑʼ/ʿ;->ٴﹶ()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object p1, p1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ˈʿ;

    iget-object v1, v1, Lˑʼ/ˈʿ;->ﹳٴ:Lˑʼ/ʿ;

    invoke-virtual {v1}, Lˑʼ/ʿ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    return p2
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʽ/ٴﹶ;->ˋᵔ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʽ/ٴﹶ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    new-instance v2, Lˊʻ/ᵎﹶ;

    invoke-direct {v2, p1}, Lˊʻ/ᵎﹶ;-><init>(Z)V

    invoke-interface {v1, v2}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˋᵔ:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˋᵔ:Z

    iget-object p2, p0, Lʽ/ٴﹶ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑٴ/ﹳٴ;

    new-instance v1, Lˊʻ/ᵎﹶ;

    invoke-direct {v1, p1}, Lˊʻ/ᵎﹶ;-><init>(Z)V

    invoke-interface {v0, v1}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˋᵔ:Z

    throw p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    invoke-interface {v1, p1}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object v0, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ˈʿ;

    iget-object v1, v1, Lˑʼ/ˈʿ;->ﹳٴ:Lˑʼ/ʿ;

    invoke-virtual {v1}, Lˑʼ/ʿ;->ᵔﹳ()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʽ/ٴﹶ;->ˊˋ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʽ/ٴﹶ;->ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    new-instance v2, Lˊʻ/ʼᐧ;

    invoke-direct {v2, p1}, Lˊʻ/ʼᐧ;-><init>(Z)V

    invoke-interface {v1, v2}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˊˋ:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˊˋ:Z

    iget-object p2, p0, Lʽ/ٴﹶ;->ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑٴ/ﹳٴ;

    new-instance v1, Lˊʻ/ʼᐧ;

    invoke-direct {v1, p1}, Lˊʻ/ʼᐧ;-><init>(Z)V

    invoke-interface {v0, v1}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lʽ/ٴﹶ;->ˊˋ:Z

    throw p1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .prologue
    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object p1, p1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˑʼ/ˈʿ;

    iget-object p2, p2, Lˑʼ/ˈʿ;->ﹳٴ:Lˑʼ/ʿ;

    invoke-virtual {p2}, Lˑʼ/ʿ;->ˏי()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Lʽ/ﾞᴵ;->ﹳٴ(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽ/ʼˎ;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lʽ/ʼˎ;->ﹳٴ:Landroidx/lifecycle/ˏᵢ;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lʽ/ʼˎ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lʽ/ʼˎ;->ﹳٴ:Landroidx/lifecycle/ˏᵢ;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    if-eqz v0, :cond_0

    const-string v1, "setCurrentState"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V

    :cond_0
    invoke-super {p0, p1}, Lˊʻ/ﾞᴵ;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lـʾ/ᵔﹳ;->ˏי(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ˆﾞ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 6

    .prologue
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/ʽ;->ˉˆ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᵎⁱ:Lٴʽ/יـ;

    iget-object v1, v0, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lٴʽ/יـ;->ﹳٴ:Z

    iget-object v2, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lᴵⁱ/ﹳٴ;

    invoke-interface {v5}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    invoke-virtual {v1, v0}, Lʽ/ˆʾ;->ﹳٴ(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    invoke-virtual {v1, v0}, Lʽ/ˆʾ;->ﹳٴ(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    invoke-virtual {v1, v0}, Lʽ/ˆʾ;->ﹳٴ(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ʽ(Lˑٴ/ﹳٴ;)V
    .locals 1

    iget-object v0, p0, Lʽ/ٴﹶ;->ᵔי:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ʾˋ()Lʼـ/ˈ;
    .locals 3

    .prologue
    new-instance v0, Lʼـ/ˈ;

    invoke-direct {v0}, Lʼـ/ˈ;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v0, v1, p0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {v0, v1, p0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ʽ:Lٴﾞ/ˆʾ;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final ˈ(Lˈ/ﹳٴ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵˊ:Lᴵˈ/ᵔᵢ;

    iget-object v1, v0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʽ/ٴﹶ;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lˈ/ﹳٴ;->ﹳٴ()V

    :cond_0
    iget-object v0, v0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    iget-object v0, p0, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    return-object v0
.end method

.method public final ˑﹳ()Lʽ/ʽﹳ;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽ/ٴﹶ;->ٴᵢ:Lʽ/ʽﹳ;

    if-nez v0, :cond_0

    new-instance v0, Lʽ/ʽﹳ;

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lʽ/ʽﹳ;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lʽ/ٴﹶ;->ٴᵢ:Lʽ/ʽﹳ;

    new-instance v0, Lʽ/ᵎﹶ;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lʽ/ᵎﹶ;-><init>(Lʽ/ٴﹶ;I)V

    iget-object v1, p0, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    :cond_0
    iget-object v0, p0, Lʽ/ٴﹶ;->ٴᵢ:Lʽ/ʽﹳ;

    return-object v0
.end method

.method public final ᵎﹶ()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0435

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0434

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0433

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b031f

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final ᵔי()Landroidx/lifecycle/ˏᵢ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽ/ʼˎ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʽ/ʼˎ;->ﹳٴ:Landroidx/lifecycle/ˏᵢ;

    iput-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    :cond_0
    iget-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/ˏᵢ;

    invoke-direct {v0}, Landroidx/lifecycle/ˏᵢ;-><init>()V

    iput-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    :cond_1
    iget-object v0, p0, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ʽ;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_rq#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʽ/ٴﹶ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    invoke-virtual {v1, v0, p0, p1, p2}, Lʽ/ﾞᴵ;->ʽ(Ljava/lang/String;Landroidx/lifecycle/ʽﹳ;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞᴵ()Lˑʼ/ᵎˊ;
    .locals 1

    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    return-object v0
.end method
