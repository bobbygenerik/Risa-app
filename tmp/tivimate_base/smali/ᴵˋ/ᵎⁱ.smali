.class public final synthetic Lᴵˋ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroidx/work/Worker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/Worker;I)V
    .locals 0

    iput p2, p0, Lᴵˋ/ᵎⁱ;->ʾˋ:I

    iput-object p1, p0, Lᴵˋ/ᵎⁱ;->ᴵˊ:Landroidx/work/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ᵎⁱ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᴵˋ/ᵎⁱ;->ᴵˊ:Landroidx/work/Worker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lᴵˋ/ᵎⁱ;->ᴵˊ:Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->ˑﹳ()Lᴵˋ/ᵔﹳ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
