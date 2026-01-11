.class public final Lʼᴵ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᴵ/ﾞᴵ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼᴵ/ˑﹳ;->ﹳٴ:I

    iput-object p2, p0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʽˋ/ـˆ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʼᴵ/ˑﹳ;->ﹳٴ:I

    sget-object v0, Lﹶˑ/ᵔᵢ;->ᵎⁱ:Lﹶˑ/ᵔᵢ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lﹶˑ/ʽ;

    iget-object v1, p0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lﹶˑ/ʽ;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    :pswitch_2
    new-instance v0, Lʼᴵ/ˈ;

    invoke-direct {v0, p0}, Lʼᴵ/ˈ;-><init>(Lʼᴵ/ˑﹳ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
