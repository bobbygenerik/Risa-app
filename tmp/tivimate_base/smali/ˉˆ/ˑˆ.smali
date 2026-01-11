.class public final Lˉˆ/ˑˆ;
.super Lـﹶ/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/lang/ref/WeakReference;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˉˆ/ˑˆ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lˉˆ/ˑˆ;->ⁱˊ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˉˆ/ˑˆ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lˉˆ/ˑˆ;->ⁱˊ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lˉˆ/ˑˆ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ˑˆ;->ⁱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lﹶᐧ/ᵔᵢ;->ﹳٴ(Landroid/widget/EditText;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ˑˆ;->ⁱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->ʽ()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 1

    .prologue
    iget v0, p0, Lˉˆ/ˑˆ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ˑˆ;->ⁱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->ʽ()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
