.class public final Lˉˆ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic ʾˋ:Lˉˆ/ˉٴ;

.field public final synthetic ᴵˊ:Lˉˆ/ˆﾞ;


# direct methods
.method public constructor <init>(Lˉˆ/ˆﾞ;Lˉˆ/ˉٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ᵔי;->ᴵˊ:Lˉˆ/ˆﾞ;

    iput-object p2, p0, Lˉˆ/ᵔי;->ʾˋ:Lˉˆ/ˉٴ;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔי;->ᴵˊ:Lˉˆ/ˆﾞ;

    iget-object v0, v0, Lˉˆ/ˆﾞ;->ـﹶ:Lˉˆ/ˑٴ;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˉˆ/ᵔי;->ʾˋ:Lˉˆ/ˉٴ;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
