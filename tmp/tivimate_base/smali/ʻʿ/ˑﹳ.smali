.class public final synthetic Lʻʿ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;
.implements Lˆʽ/ˑﹳ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lʻʿ/ˑﹳ;->ʾˋ:I

    iput p1, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lʻʿ/ﹳٴ;ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lʻʿ/ˑﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    iget p1, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Lʻʿ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ʼʼ(I)V

    return-void

    :pswitch_0
    iget v0, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˆʾ(I)V

    return-void

    :pswitch_1
    check-cast p1, Lʻʿ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lʻʿ/ʼᐧ;

    iget v0, p0, Lʻʿ/ˑﹳ;->ᴵˊ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p1, Lʻʿ/ʼᐧ;->ʻٴ:Z

    :cond_0
    iput v0, p1, Lʻʿ/ʼᐧ;->ﾞʻ:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
