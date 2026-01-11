.class public final Lˑʼ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic ʾˋ:Lˑʼ/ʻٴ;


# direct methods
.method public constructor <init>(Lˑʼ/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/יـ;->ʾˋ:Lˑʼ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lˑʼ/יـ;->ʾˋ:Lˑʼ/ʻٴ;

    iget-object v0, p1, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lˑʼ/ʻٴ;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
