.class public final synthetic Lˆˉ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ˑﹳ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˆˉ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lˆˉ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lʿˑ/ﾞᴵ;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lʿˑ/ﾞᴵ;->ˑﹳ(Z)Lʿˑ/ﾞᴵ;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lʿˑ/ﾞᴵ;

    invoke-interface {p2, p1}, Lʿˑ/ﾞᴵ;->ˈ(Ljava/lang/String;)Lʿˑ/ﾞᴵ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
