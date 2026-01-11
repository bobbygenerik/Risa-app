.class public final Lˉˆ/ⁱᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˉˆ/ⁱᴵ;->ʾˋ:I

    iput-object p2, p0, Lˉˆ/ⁱᴵ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .prologue
    iget v0, p0, Lˉˆ/ⁱᴵ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ⁱᴵ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔʾ/יـ;

    invoke-virtual {v0}, Lᵔʾ/יـ;->ʽ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ⁱᴵ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʻٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ٴʿ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lʼⁱ/ٴʿ;->ᴵˊ:Lʼⁱ/ˊﹳ;

    const/4 v1, 0x0

    iput-object v1, v0, Lʼⁱ/ˊﹳ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lʿˋ/ˋᵔ;->ʼˈ(Landroid/app/Activity;Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
