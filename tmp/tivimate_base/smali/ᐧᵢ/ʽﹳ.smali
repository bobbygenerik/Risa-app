.class public final Lᐧᵢ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᐧᵢ/ˈ;


# direct methods
.method public synthetic constructor <init>(Lᐧᵢ/ˈ;I)V
    .locals 0

    iput p2, p0, Lᐧᵢ/ʽﹳ;->ʾˋ:I

    iput-object p1, p0, Lᐧᵢ/ʽﹳ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lᐧᵢ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lᐧᵢ/ʽﹳ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {p1}, Lᐧᵢ/ˈ;->cancel()V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lᐧᵢ/ʽﹳ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {p1}, Lᐧᵢ/ˈ;->cancel()V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lᐧᵢ/ʽﹳ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {p1}, Lᐧᵢ/ˈ;->cancel()V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
