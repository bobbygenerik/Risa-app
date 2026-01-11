.class public Lˑʼ/ʻٴ;
.super Lˑʼ/ᴵᵔ;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public ʻʿ:Z

.field public final ʻᴵ:Landroidx/leanback/widget/ᵔʾ;

.field public ʼᵢ:Z

.field public ʽˑ:Z

.field public ʿـ:I

.field public ˋˊ:Z

.field public final ـˊ:Lˑʼ/ﹳᐧ;

.field public ـᵢ:Z

.field public final ٴᴵ:Lˑʼ/ˏי;

.field public ᐧˎ:Landroid/os/Handler;

.field public final ᵎʿ:Lˑʼ/יـ;

.field public ⁱי:Z

.field public ⁱᴵ:Landroid/app/Dialog;

.field public ﹳⁱ:I

.field public ﹶ:I

.field public ﹶˎ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lˑʼ/ᴵᵔ;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˑʼ/ʻٴ;->ʻᴵ:Landroidx/leanback/widget/ᵔʾ;

    new-instance v0, Lˑʼ/ﹳᐧ;

    invoke-direct {v0, p0}, Lˑʼ/ﹳᐧ;-><init>(Lˑʼ/ʻٴ;)V

    iput-object v0, p0, Lˑʼ/ʻٴ;->ـˊ:Lˑʼ/ﹳᐧ;

    new-instance v0, Lˑʼ/יـ;

    invoke-direct {v0, p0}, Lˑʼ/יـ;-><init>(Lˑʼ/ʻٴ;)V

    iput-object v0, p0, Lˑʼ/ʻٴ;->ᵎʿ:Lˑʼ/יـ;

    const/4 v0, 0x0

    iput v0, p0, Lˑʼ/ʻٴ;->ʿـ:I

    iput v0, p0, Lˑʼ/ʻٴ;->ﹳⁱ:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ⁱי:Z

    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    const/4 v1, -0x1

    iput v1, p0, Lˑʼ/ʻٴ;->ﹶ:I

    new-instance v1, Lˑʼ/ˏי;

    invoke-direct {v1, p0}, Lˑʼ/ˏי;-><init>(Lˑʼ/ʻٴ;)V

    iput-object v1, p0, Lˑʼ/ʻٴ;->ٴᴵ:Lˑʼ/ˏי;

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʼᵢ:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    iget-boolean p1, p0, Lˑʼ/ʻٴ;->ﹶˎ:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDismiss called for DialogFragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lˑʼ/ʻٴ;->ˈـ(ZZ)V

    :cond_1
    return-void
.end method

.method public final ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 7

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_8

    iget-boolean v4, p0, Lˑʼ/ʻٴ;->ـᵢ:Z

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʼᵢ:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lˑʼ/ʻٴ;->ـᵢ:Z

    invoke-virtual {p0, p1}, Lˑʼ/ʻٴ;->ˎʾ(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    iget-boolean v5, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lˑʼ/ʻٴ;->ʿـ:I

    if-eq v5, v4, :cond_3

    if-eq v5, v3, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    iget-boolean v5, p0, Lˑʼ/ʻٴ;->ⁱי:Z

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    iget-object v5, p0, Lˑʼ/ʻٴ;->ـˊ:Lˑʼ/ﹳᐧ;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    iget-object v5, p0, Lˑʼ/ʻٴ;->ᵎʿ:Lˑʼ/יـ;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v4, p0, Lˑʼ/ʻٴ;->ʼᵢ:Z

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ـᵢ:Z

    goto :goto_4

    :goto_3
    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ـᵢ:Z

    throw p1

    :cond_6
    :goto_4
    invoke-static {v3}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "get layout inflater for DialogFragment "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_7
    iget-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_5
    invoke-static {v3}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mShowsDialog = false: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mCreatingDialog = true: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_a
    return-object v0
.end method

.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lˑʼ/ʻٴ;->ᐧˎ:Landroid/os/Handler;

    iget v0, p0, Lˑʼ/ᴵᵔ;->ʿ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lˑʼ/ʻٴ;->ʿـ:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lˑʼ/ʻٴ;->ﹳⁱ:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ⁱי:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lˑʼ/ʻٴ;->ﹶ:I

    :cond_1
    return-void
.end method

.method public final ʾˊ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ﹶˎ:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lˑʼ/ʻٴ;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʼᵢ:Z

    :cond_1
    return-void
.end method

.method public ʾﾞ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lˑʼ/ʻٴ;->ʿـ:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lˑʼ/ʻٴ;->ﹳⁱ:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lˑʼ/ʻٴ;->ⁱי:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lˑʼ/ʻٴ;->ʻʿ:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lˑʼ/ʻٴ;->ﹶ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final ˈـ(ZZ)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ˋˊ:Z

    iget-object v1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Lˑʼ/ʻٴ;->ᐧˎ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Lˑʼ/ʻٴ;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lˑʼ/ʻٴ;->ᐧˎ:Landroid/os/Handler;

    iget-object v1, p0, Lˑʼ/ʻٴ;->ʻᴵ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ﹶˎ:Z

    iget p2, p0, Lˑʼ/ʻٴ;->ﹶ:I

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object p2

    iget v1, p0, Lˑʼ/ʻٴ;->ﹶ:I

    invoke-virtual {p2, v1, v0, p1}, Lˑʼ/ʿ;->ᴵˑ(IIZ)V

    const/4 p1, -0x1

    iput p1, p0, Lˑʼ/ʻٴ;->ﹶ:I

    return-void

    :cond_3
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object p2

    new-instance v1, Lˑʼ/ﹳٴ;

    invoke-direct {v1, p2}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    iput-boolean v0, v1, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    invoke-virtual {v1, p0}, Lˑʼ/ﹳٴ;->ٴﹶ(Lˑʼ/ᴵᵔ;)V

    if-eqz p1, :cond_4

    invoke-virtual {v1, v0, v0}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    return-void

    :cond_4
    invoke-virtual {v1}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    return-void
.end method

.method public ˎʾ(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 p1, 0x3

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_0
    new-instance p1, Lʽ/ﾞʻ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lˑʼ/ʻٴ;->ﹳⁱ:I

    invoke-direct {p1, v0, v1}, Lʽ/ﾞʻ;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public ˎˉ()V
    .locals 0

    invoke-virtual {p0}, Lˑʼ/ʻٴ;->ﾞˋ()V

    return-void
.end method

.method public final ˑ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ˋˊ:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ʾˊ:Landroidx/lifecycle/ˊʻ;

    iget-object v1, p0, Lˑʼ/ʻٴ;->ٴᴵ:Lˑʼ/ˏי;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ʽʽ;->ˆʾ(Landroidx/lifecycle/ٴᵢ;)V

    return-void
.end method

.method public final ˑʼ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ˑˆ()V
    .locals 0

    invoke-virtual {p0}, Lˑʼ/ʻٴ;->ﾞˋ()V

    return-void
.end method

.method public final ـˊ(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final ـᵎ(Landroid/content/Context;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ـᵎ(Landroid/content/Context;)V

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ʾˊ:Landroidx/lifecycle/ˊʻ;

    iget-object v0, p0, Lˑʼ/ʻٴ;->ٴᴵ:Lˑʼ/ˏי;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ʽʽ;->ﾞᴵ(Landroidx/lifecycle/ٴᵢ;)V

    iget-boolean p1, p0, Lˑʼ/ʻٴ;->ˋˊ:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˑʼ/ʻٴ;->ʽˑ:Z

    :cond_0
    return-void
.end method

.method public ᐧˎ()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final ᵎʿ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Lˑʼ/ᴵᵔ;->ᵎʿ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ⁱˉ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˑʼ/ʻٴ;->ﹶˎ:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0b0435

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0b0434

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final ﹳـ()Lʼ/ᵎﹶ;
    .locals 2

    new-instance v0, Lˑʼ/ᵢˏ;

    invoke-direct {v0, p0}, Lˑʼ/ᵢˏ;-><init>(Lˑʼ/ᴵᵔ;)V

    new-instance v1, Lˑʼ/ʽﹳ;

    invoke-direct {v1, p0, v0}, Lˑʼ/ʽﹳ;-><init>(Lˑʼ/ʻٴ;Lˑʼ/ᵢˏ;)V

    return-object v1
.end method

.method public ﹳᵢ()V
    .locals 0

    invoke-virtual {p0}, Lˑʼ/ʻٴ;->ﾞˋ()V

    return-void
.end method

.method public final ﾞˋ()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lˑʼ/ʻٴ;->ˈـ(ZZ)V

    return-void
.end method
