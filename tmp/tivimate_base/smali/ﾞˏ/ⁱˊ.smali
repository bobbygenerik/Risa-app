.class public final synthetic Lﾞˏ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﾞˏ/ʽ;


# direct methods
.method public synthetic constructor <init>(Lﾞˏ/ʽ;I)V
    .locals 0

    iput p2, p0, Lﾞˏ/ⁱˊ;->ʾˋ:I

    iput-object p1, p0, Lﾞˏ/ⁱˊ;->ᴵˊ:Lﾞˏ/ʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget v0, p0, Lﾞˏ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﾞˏ/ⁱˊ;->ᴵˊ:Lﾞˏ/ʽ;

    iget-object v0, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˈ;

    iget-object v0, v0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    invoke-interface {v0}, Lﾞˏ/ˈٴ;->ﾞᴵ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﾞˏ/ⁱˊ;->ᴵˊ:Lﾞˏ/ʽ;

    iget-object v0, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˈ;

    iget-object v0, v0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    invoke-interface {v0}, Lﾞˏ/ˈٴ;->ˑﹳ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
