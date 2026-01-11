.class public final Lיᐧ/ˑﹳ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lיᐧ/ˑﹳ;->ᴵˊ:I

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ﹶˎ()Lיᐧ/ᵔᵢ;
    .locals 1

    .prologue
    iget v0, p0, Lיᐧ/ˑﹳ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lיᐧ/ˆʾ;

    invoke-direct {v0, p0}, Lיᐧ/ˆʾ;-><init>(Lיᐧ/ˑﹳ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lיᐧ/ˈ;

    invoke-direct {v0, p0}, Lיᐧ/ˈ;-><init>(Lיᐧ/ˑﹳ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
