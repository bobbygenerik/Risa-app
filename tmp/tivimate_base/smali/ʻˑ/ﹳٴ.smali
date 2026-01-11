.class public final Lʻˑ/ﹳٴ;
.super Ljava/lang/Object;


# instance fields
.field public ʽ:Z

.field public ˈ:Ljava/lang/Object;

.field public ˑﹳ:Ljava/lang/Object;

.field public ⁱˊ:I

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʻˑ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻˑ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    new-instance p1, Lﹳˊ/יـ;

    invoke-direct {p1, v0, p0}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻˑ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    new-instance p1, Lٴˉ/ⁱˊ;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ʽ()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v2, [B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    return-void
.end method

.method public ⁱˊ(I[B)I
    .locals 4

    .prologue
    iget-object v0, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v0, [B

    :try_start_0
    iget v1, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    add-int v2, p1, v1

    array-length v3, p2

    if-gt v2, v3, :cond_2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lʻˑ/ﹳٴ;->ʽ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lˏˉ/ﹳٴ;

    invoke-virtual {v1, v2, v2, v0, v0}, Lˏˉ/ﹳٴ;->ﹳٴ(II[B[B)V

    iget v1, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    iput v2, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lʻˑ/ﹳٴ;->ʽ()V

    return v2

    :cond_2
    :try_start_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lʻˑ/ﹳٴ;->ʽ()V

    throw p1
.end method

.method public ﹳٴ(I)V
    .locals 2

    .prologue
    iget v0, p0, Lʻˑ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    iget-boolean p1, p0, Lʻˑ/ﹳٴ;->ʽ:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/יـ;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʻˑ/ﹳٴ;->ʽ:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    iget-boolean p1, p0, Lʻˑ/ﹳٴ;->ʽ:Z

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lٴˉ/ⁱˊ;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʻˑ/ﹳٴ;->ʽ:Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
