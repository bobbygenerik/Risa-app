.class public Lᴵˈ/ʽ;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public ʽʽ:Landroid/app/AlertDialog;

.field public ʾˋ:Landroid/app/Dialog;

.field public ᴵˊ:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵˈ/ʽ;->ᴵˊ:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    iget-object p1, p0, Lᴵˈ/ʽ;->ʾˋ:Landroid/app/Dialog;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    iget-object p1, p0, Lᴵˈ/ʽ;->ʽʽ:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lᴵˈ/ʽ;->ʽʽ:Landroid/app/AlertDialog;

    :cond_0
    iget-object p1, p0, Lᴵˈ/ʽ;->ʽʽ:Landroid/app/AlertDialog;

    :cond_1
    return-object p1
.end method
