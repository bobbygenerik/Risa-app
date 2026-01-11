.class public final Lˑʼ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic ʾˋ:Lˑʼ/ᴵʼ;

.field public final synthetic ᴵˊ:Lˑʼ/ٴʼ;


# direct methods
.method public constructor <init>(Lˑʼ/ٴʼ;Lˑʼ/ᴵʼ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ᵎⁱ;->ᴵˊ:Lˑʼ/ٴʼ;

    iput-object p2, p0, Lˑʼ/ᵎⁱ;->ʾˋ:Lˑʼ/ᴵʼ;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lˑʼ/ᵎⁱ;->ʾˋ:Lˑʼ/ᴵʼ;

    iget-object v0, p1, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p1}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lˑʼ/ᵎⁱ;->ᴵˊ:Lˑʼ/ٴʼ;

    iget-object v0, v0, Lˑʼ/ٴʼ;->ʾˋ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    const v0, 0x7f0b0367

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lˑʼ/ᵔﹳ;

    if-eqz v2, :cond_0

    check-cast v1, Lˑʼ/ᵔﹳ;

    goto :goto_0

    :cond_0
    new-instance v1, Lˑʼ/ᵔﹳ;

    invoke-direct {v1, p1}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Lˑʼ/ᵔﹳ;->ʼˎ()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
