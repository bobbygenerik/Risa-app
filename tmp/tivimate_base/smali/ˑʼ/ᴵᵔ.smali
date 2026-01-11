.class public abstract Lˑʼ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/ʽﹳ;
.implements Landroidx/lifecycle/ᴵʼ;
.implements Landroidx/lifecycle/ʼˎ;
.implements Lᵎ/ˑﹳ;


# static fields
.field public static final ⁱˉ:Ljava/lang/Object;


# instance fields
.field public final ʻˋ:Lˑʼ/ʾᵎ;

.field public ʻᵎ:Landroid/view/ViewGroup;

.field public ʼˈ:I

.field public ʼـ:Lـʾ/ᵔﹳ;

.field public ʽʽ:Landroid/util/SparseArray;

.field public ʽᵔ:Landroidx/lifecycle/ᵔʾ;

.field public final ʽⁱ:Ljava/util/ArrayList;

.field public final ʾˊ:Landroidx/lifecycle/ˊʻ;

.field public ʾˋ:I

.field public final ʾﾞ:Lˑʼ/ʼʼ;

.field public ʿ:I

.field public ʿᵢ:Ljava/lang/String;

.field public ˆﾞ:Z

.field public ˈʿ:Z

.field public ˈˏ:Z

.field public ˈٴ:Landroid/os/Bundle;

.field public ˈⁱ:Lˑʼ/ʿ;

.field public ˉـ:I

.field public ˉٴ:Ljava/lang/String;

.field public ˊʻ:Landroid/os/Bundle;

.field public ˊˋ:Z

.field public ˊᵔ:Landroid/view/View;

.field public ˋᵔ:Z

.field public ˎᐧ:I

.field public final ˏᵢ:Z

.field public ˑ:Landroidx/lifecycle/ᴵˑ;

.field public ˑʼ:Z

.field public ˑٴ:Z

.field public י:Lˑʼ/ٴﹳ;

.field public final יﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ـˏ:Lˑʼ/ʿ;

.field public ـᵎ:Ljava/lang/String;

.field public ـﹶ:Z

.field public ٴʼ:Ljava/lang/Boolean;

.field public ٴᵢ:Lˑʼ/ᴵᵔ;

.field public ٴﹳ:Landroid/view/LayoutInflater;

.field public ᐧᴵ:Z

.field public ᐧﹶ:Landroidx/lifecycle/ـˆ;

.field public ᐧﾞ:Z

.field public ᴵʼ:Z

.field public ᴵˊ:Landroid/os/Bundle;

.field public ᴵˑ:Lˑʼ/ᴵᵔ;

.field public ᴵᵔ:Ljava/lang/String;

.field public ᵎʻ:Z

.field public ᵎˊ:Z

.field public ᵎᵔ:Z

.field public ᵎⁱ:I

.field public ᵔי:Z

.field public ᵔٴ:Z

.field public ﹳـ:Lˑʼ/ٴᵢ;

.field public ﹳﹳ:Landroid/os/Handler;

.field public ﹶᐧ:Lˑʼ/ᴵˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˑʼ/ᴵᵔ;->ⁱˉ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ٴʼ:Ljava/lang/Boolean;

    new-instance v0, Lˑʼ/ʿ;

    invoke-direct {v0}, Lˑʼ/ʿ;-><init>()V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˏᵢ:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    new-instance v0, Lˑʼ/ʾᵎ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lˑʼ/ʾᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ʻˋ:Lˑʼ/ʾᵎ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ᴵᵔ:Landroidx/lifecycle/ᵔʾ;

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    new-instance v0, Landroidx/lifecycle/ˊʻ;

    invoke-direct {v0}, Landroidx/lifecycle/ʽʽ;-><init>()V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ʾˊ:Landroidx/lifecycle/ˊʻ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->יﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ʽⁱ:Ljava/util/ArrayList;

    new-instance v0, Lˑʼ/ʼʼ;

    invoke-direct {v0, p0}, Lˑʼ/ʼʼ;-><init>(Lˑʼ/ᴵᵔ;)V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ʾﾞ:Lˑʼ/ʼʼ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˊᵔ()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ⁱי()Lᵔᵢ/ˆʾ;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑʼ/ᴵᵔ;->ˉـ:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑʼ/ᴵᵔ;->ˉـ:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻʿ()Landroid/content/Context;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʻˋ()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ﹶᐧ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final ʻᵎ()Lˑʼ/ٴﹳ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner for "

    const-string v2, " when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iget-object v0, v0, Lˑʼ/ʿ;->ﾞᴵ:Lˑʼ/ٴʼ;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʼᵢ(Landroid/content/Intent;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment "

    const-string v1, " not attached to Activity"

    invoke-static {v0, p0, v1}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽˑ(Ljava/lang/Cloneable;)V
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object p1, v0, Lˑʼ/ᴵˊ;->ٴﹶ:Ljava/lang/Object;

    return-void
.end method

.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ـᵢ()V

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iget v1, v0, Lˑʼ/ʿ;->ـˆ:I

    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    invoke-virtual {v0, p1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    return-void
.end method

.method public ʽⁱ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ʾˊ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final ʾˋ()Lʼـ/ˈ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    nop

    :cond_2
    new-instance v1, Lʼـ/ˈ;

    invoke-direct {v1}, Lʼـ/ˈ;-><init>()V

    if-eqz v0, :cond_3

    sget-object v2, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    invoke-virtual {v1, v2, v0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v1, v0, p0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {v1, v0, p0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    sget-object v2, Landroidx/lifecycle/ʼˈ;->ʽ:Lٴﾞ/ˆʾ;

    invoke-virtual {v1, v2, v0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public ʾﾞ(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public ʿ()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    return-object v0
.end method

.method public final ʿـ()V
    .locals 5

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lˑʼ/ᴵˊ;->ᵔﹳ:Z

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    iget-object v2, p0, Lˑʼ/ᴵᵔ;->ʻˋ:Lˑʼ/ʾᵎ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    :goto_0
    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final ʿᵢ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ʿᵢ()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final ˈˏ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈⁱ()Lˑʼ/ᴵˊ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v0, :cond_0

    new-instance v0, Lˑʼ/ᴵˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lˑʼ/ᴵˊ;->ʼˎ:Ljava/lang/Object;

    sget-object v2, Lˑʼ/ᴵᵔ;->ⁱˉ:Ljava/lang/Object;

    iput-object v2, v0, Lˑʼ/ᴵˊ;->ˆʾ:Ljava/lang/Object;

    iput-object v1, v0, Lˑʼ/ᴵˊ;->ٴﹶ:Ljava/lang/Object;

    iput-object v2, v0, Lˑʼ/ᴵˊ;->ﾞʻ:Ljava/lang/Object;

    iput-object v1, v0, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    iput-object v2, v0, Lˑʼ/ᴵˊ;->ᵔʾ:Ljava/lang/Object;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lˑʼ/ᴵˊ;->ˉˆ:F

    iput-object v1, v0, Lˑʼ/ᴵˊ;->ʼᐧ:Landroid/view/View;

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    return-object v0
.end method

.method public final ˉـ()Lˑʼ/ʿ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˊᵔ()V
    .locals 3

    .prologue
    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    new-instance v0, Lʿʻ/ⁱˊ;

    new-instance v1, Lיˋ/ˈ;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lʿʻ/ⁱˊ;-><init>(Lᵎ/ˑﹳ;Lיˋ/ˈ;)V

    new-instance v1, Lـʾ/ᵔﹳ;

    invoke-direct {v1, v0}, Lـʾ/ᵔﹳ;-><init>(Lʿʻ/ⁱˊ;)V

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ʼـ:Lـʾ/ᵔﹳ;

    const/4 v0, 0x0

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ˑ:Landroidx/lifecycle/ᴵˑ;

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʽⁱ:Ljava/util/ArrayList;

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ʾﾞ:Lˑʼ/ʼʼ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lˑʼ/ʼʼ;->ﹳٴ()V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final ˋˊ(Lʻᐧ/ˏי;)V
    .locals 4

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    new-instance v0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to set target fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with request code 0 for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-static {v0}, Lٴﹳ/ⁱˊ;->ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, Lٴﹳ/ⁱˊ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object v0, p1

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-super {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " would create a target cycle"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p1, :cond_6

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iput-object p1, p0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    goto :goto_3

    :cond_7
    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object p1, p0, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    :goto_3
    iput v2, p0, Lˑʼ/ᴵᵔ;->ᵎⁱ:I

    return-void
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    return-object v0
.end method

.method public ˎᐧ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final varargs ˏᵢ(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ˑ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ˑʼ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public י()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final יˉ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iget-boolean v0, v0, Lˑʼ/ᴵˊ;->ᵔﹳ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ᴵˊ;->ᵔﹳ:Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    new-instance v1, Lˑʼ/ʾᵎ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lˑʼ/ʾᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ـˏ(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public יﹳ(Z)V
    .locals 0

    return-void
.end method

.method public ـˊ(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final ـˏ(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ᴵˊ;->ᵔﹳ:Z

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lˑʼ/ᵔﹳ;

    if-eqz v3, :cond_1

    check-cast v2, Lˑʼ/ᵔﹳ;

    goto :goto_0

    :cond_1
    new-instance v2, Lˑʼ/ᵔﹳ;

    invoke-direct {v2, v0}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lˑʼ/ᵔﹳ;->ٴﹶ()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/16 v1, 0x18

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lˑʼ/ᵔﹳ;->ˑﹳ()V

    :goto_1
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʻˋ:Lˑʼ/ʾᵎ;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lˑʼ/ᴵᵔ;->ﹳﹳ:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method public ـᵎ(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lˑʼ/ٴᵢ;->ٴᵢ:Lᵔᵢ/ˆʾ;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {p0, p1}, Lˑʼ/ᴵᵔ;->ᵎʻ(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final ـᵢ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "childFragmentManager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1, v0}, Lˑʼ/ʿ;->ᐧᴵ(Landroid/os/Bundle;)V

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    :cond_0
    return-void
.end method

.method public final ـﹶ()V
    .locals 3

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˊᵔ()V

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ـᵎ:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵔי:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˋᵔ:Z

    iput v0, p0, Lˑʼ/ᴵᵔ;->ʼˈ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    new-instance v2, Lˑʼ/ʿ;

    invoke-direct {v2}, Lˑʼ/ʿ;-><init>()V

    iput-object v2, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iput v0, p0, Lˑʼ/ᴵᵔ;->ˉـ:I

    iput v0, p0, Lˑʼ/ᴵᵔ;->ʿ:I

    iput-object v1, p0, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    return-void
.end method

.method public final ٴᴵ(IIII)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput p1, v0, Lˑʼ/ᴵˊ;->ⁱˊ:I

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object p1

    iput p2, p1, Lˑʼ/ᴵˊ;->ʽ:I

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object p1

    iput p3, p1, Lˑʼ/ᴵˊ;->ˈ:I

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object p1

    iput p4, p1, Lˑʼ/ᴵˊ;->ˑﹳ:I

    return-void
.end method

.method public ٴﹳ(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    nop

    :cond_0
    return-void
.end method

.method public ᐧˎ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final ᐧᴵ(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    iget p3, p0, Lˑʼ/ᴵᵔ;->ˎᐧ:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᐧﾞ()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final ᴵʼ(Z)Lˑʼ/ᴵᵔ;
    .locals 2

    .prologue
    if-eqz p1, :cond_0

    sget-object p1, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    new-instance p1, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to get target fragment from fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/fragment/app/strictmode/Violation;-><init>(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-static {p1}, Lٴﹳ/ⁱˊ;->ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, Lٴﹳ/ⁱˊ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {p1, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᴵˑ()Lᵔᵢ/ˆʾ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴᵢ:Lᵔᵢ/ˆʾ;

    return-object v0
.end method

.method public ᵎʻ(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ᵎʿ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ﹳـ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˊˋ:Z

    new-instance v0, Lˑʼ/ٴﹳ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ᵎⁱ;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2}, Lˑʼ/ٴﹳ;-><init>(Lˑʼ/ᴵᵔ;Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᵎⁱ;)V

    iput-object v0, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {p0, p1, p2, p3}, Lˑʼ/ᴵᵔ;->ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {p1}, Lˑʼ/ٴﹳ;->ⁱˊ()V

    const/4 p1, 0x3

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Setting ViewLifecycleOwner on View "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    nop

    :cond_0
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    iget-object p2, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    const p3, 0x7f0b0432

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    iget-object p2, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    const p3, 0x7f0b0435

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    iget-object p2, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    const p3, 0x7f0b0434

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ʾˊ:Landroidx/lifecycle/ˊʻ;

    iget-object p2, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ʽʽ;->ٴﹶ(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    iget-object p1, p1, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎᵔ()Lˑʼ/ʿ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔי()Landroidx/lifecycle/ˏᵢ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿᵢ()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v0, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iget-object v0, v0, Lˑʼ/ᵎᵔ;->ˈ:Ljava/util/HashMap;

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ˏᵢ;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/ˏᵢ;

    invoke-direct {v1}, Landroidx/lifecycle/ˏᵢ;-><init>()V

    iget-object v2, p0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ⁱˉ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public final ⁱי()Lᵔᵢ/ˆʾ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to an activity."

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱᴵ(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lˑʼ/ʿ;->ʼˈ()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-object p1, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    return-void
.end method

.method public ﹳـ()Lʼ/ᵎﹶ;
    .locals 1

    new-instance v0, Lˑʼ/ᵢˏ;

    invoke-direct {v0, p0}, Lˑʼ/ᵢˏ;-><init>(Lˑʼ/ᴵᵔ;)V

    return-object v0
.end method

.method public final ﹳⁱ(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ʽ;
    .locals 6

    .prologue
    new-instance v2, Lˊⁱ/ˑﹳ;

    const/16 v0, 0x9

    invoke-direct {v2, v0, p0}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    iget v0, p0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lˑʼ/ʾˋ;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lˑʼ/ʾˋ;-><init>(Lˑʼ/ᴵᵔ;Lˊⁱ/ˑﹳ;Ljava/util/concurrent/atomic/AtomicReference;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)V

    iget p1, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lˑʼ/ʾˋ;->ﹳٴ()V

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lˑʼ/ᴵᵔ;->ʽⁱ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p1, Lˑʼ/ـˆ;

    invoke-direct {p1, v3}, Lˑʼ/ـˆ;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1

    :cond_1
    move-object v1, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    invoke-static {p2, p0, v0}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˑʼ/ᴵᵔ;->ʼˈ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹶ()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹶˎ(Ljava/lang/Cloneable;)V
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object p1, v0, Lˑʼ/ᴵˊ;->ʼˎ:Ljava/lang/Object;

    return-void
.end method

.method public final ﹶᐧ()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lˑʼ/ᴵᵔ;->ﹶᐧ()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final ﾞᴵ()Lˑʼ/ᵎˊ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʼـ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    return-object v0
.end method
