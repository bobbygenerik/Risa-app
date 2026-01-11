.class public final Lʼᴵ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼᴵ/ʼˎ;->ʾˋ:I

    iput-object p2, p0, Lʼᴵ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    iget v0, p0, Lʼᴵ/ʼˎ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʼᴵ/ⁱˊ;

    iget-object v1, p0, Lʼᴵ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᴵⁱ/ﹳٴ;

    invoke-interface {v1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lʼᴵ/ⁱˊ;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼᴵ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    new-instance v1, Lˊʼ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lˊʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lʼᴵ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼᴵ/ٴﹶ;

    new-instance v1, Lﹶˑ/ⁱˊ;

    invoke-direct {v1, v0}, Lﹶˑ/ⁱˊ;-><init>(Lʼᴵ/ٴﹶ;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
