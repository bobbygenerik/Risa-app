.class public final synthetic Lʽ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʽ/ˉˆ;->ﹳٴ:I

    iput-object p2, p0, Lʽ/ˉˆ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .prologue
    iget v0, p0, Lʽ/ˉˆ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽ/ˉˆ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ˈٴ()Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽ/ˉˆ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʽ/ˉˆ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵⁱ/ﹳٴ;

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
