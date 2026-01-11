.class public final synthetic Lʾﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʾﾞ/ⁱˊ;->ʾˋ:I

    iput-object p3, p0, Lʾﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    iput p1, p0, Lʾﾞ/ⁱˊ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lⁱי/ᴵᵔ;IZ)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, Lʾﾞ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    iput p2, p0, Lʾﾞ/ⁱˊ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    iget v0, p0, Lʾﾞ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x0

    iget v2, p0, Lʾﾞ/ⁱˊ;->ᴵˊ:I

    iget-object v3, p0, Lʾﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lـʾ/ᵔﹳ;

    iget-object v0, v3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ᵔᵢ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ᴵʼ:Lʻᴵ/ʼʼ;

    new-instance v3, Lʻʿ/ˑﹳ;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lʻʿ/ˑﹳ;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v5, Lᐧˎ/ʻٴ;

    iget-object v5, v5, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v1, v6

    :cond_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    add-int/2addr v1, v6

    iput v1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    new-instance v1, Lʻʿ/ᵔʾ;

    const/16 v4, 0x1a

    invoke-direct {v1, v0, v4, v3}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lʻᴵ/ʼʼ;->ˏי(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lʻᴵ/ʼʼ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʻᴵ/ʼʼ;->ᵢˏ(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast v3, Lⁱי/ᴵᵔ;

    iget-object v0, v3, Lⁱי/ᴵᵔ;->ᴵˑ:Lʻʿ/ˆʾ;

    iget-object v1, v3, Lⁱי/ᴵᵔ;->ʾˋ:[Lˑʿ/ˑٴ;

    aget-object v1, v1, v2

    iget-object v1, v1, Lˑʿ/ˑٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lⁱי/ˑﹳ;

    iget v1, v1, Lⁱי/ˑﹳ;->ᴵˊ:I

    invoke-virtual {v0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object v1

    new-instance v2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v3, 0x409

    invoke-virtual {v0, v1, v3, v2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void

    :pswitch_1
    check-cast v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˏי(ILandroid/view/View;Z)V

    :cond_1
    return-void

    :pswitch_2
    check-cast v3, Lˉٴ/ⁱˊ;

    invoke-virtual {v3, v2}, Lˉٴ/ⁱˊ;->ʼˎ(I)V

    return-void

    :pswitch_3
    check-cast v3, Lʾﾞ/ʽ;

    iget-object v0, v3, Lʾﾞ/ʽ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, v2}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
