.class public final synthetic Lˑᵎ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Lﹳᴵ/ﹳٴ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˑᵎ/ʾᵎ;


# direct methods
.method public synthetic constructor <init>(Lˑᵎ/ʾᵎ;Lﹳᴵ/ﹳٴ;I)V
    .locals 0

    iput p3, p0, Lˑᵎ/ʽﹳ;->ʾˋ:I

    iput-object p1, p0, Lˑᵎ/ʽﹳ;->ᴵˊ:Lˑᵎ/ʾᵎ;

    iput-object p2, p0, Lˑᵎ/ʽﹳ;->ʽʽ:Lﹳᴵ/ﹳٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lˑᵎ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˑᵎ/ʽﹳ;->ʽʽ:Lﹳᴵ/ﹳٴ;

    check-cast p1, Lיـ/ˑﹳ;

    iget-object v1, p0, Lˑᵎ/ʽﹳ;->ᴵˊ:Lˑᵎ/ʾᵎ;

    invoke-virtual {v1, v0, p1}, Lˑᵎ/ʾᵎ;->ⁱˊ(Lﹳᴵ/ﹳٴ;Lיـ/ˑﹳ;)V

    :goto_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lˑᵎ/ʽﹳ;->ʽʽ:Lﹳᴵ/ﹳٴ;

    check-cast p1, Lיـ/ˑﹳ;

    iget-object v1, p0, Lˑᵎ/ʽﹳ;->ᴵˊ:Lˑᵎ/ʾᵎ;

    invoke-virtual {v1, v0, p1}, Lˑᵎ/ʾᵎ;->ﹳٴ(Lﹳᴵ/ﹳٴ;Lיـ/ˑﹳ;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
