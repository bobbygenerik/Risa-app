.class public final Lˑʼ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ٴᵢ;


# instance fields
.field public final synthetic ʾˋ:Lˑʼ/ʻٴ;


# direct methods
.method public constructor <init>(Lˑʼ/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ˏי;->ʾˋ:Lˑʼ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    check-cast p1, Landroidx/lifecycle/ʽﹳ;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lˑʼ/ˏי;->ʾˋ:Lˑʼ/ʻٴ;

    iget-boolean v0, p1, Lˑʼ/ʻٴ;->ʻʿ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DialogFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setting the content view on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object p1, p1, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
