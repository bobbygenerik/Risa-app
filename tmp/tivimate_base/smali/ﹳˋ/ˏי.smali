.class public final Lﹳˋ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳˋ/ʼᐧ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹳˋ/ˏי;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lﹳˋ/ʼˎ;Lˋʼ/ﹳٴ;)V
    .locals 0

    .prologue
    iget p1, p0, Lﹳˋ/ˏי;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    return-void

    :pswitch_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()I
    .locals 1

    .prologue
    iget v0, p0, Lﹳˋ/ˏי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x14

    return v0

    :pswitch_0
    const/16 v0, 0xd

    return v0

    :pswitch_1
    const/16 v0, 0xb

    return v0

    :pswitch_2
    const/16 v0, 0xa

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
