.class public final Lᐧᵢ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᴵי/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lᴵי/ٴﹶ;I)V
    .locals 0

    iput p2, p0, Lᐧᵢ/ʻٴ;->ʾˋ:I

    iput-object p1, p0, Lᐧᵢ/ʻٴ;->ᴵˊ:Lᴵי/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧᵢ/ˈ;Lᐧᵢ/ʼˈ;)V
    .locals 4

    .prologue
    iget v0, p0, Lᐧᵢ/ʻٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lᐧᵢ/ʻٴ;->ᴵˊ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, p2}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p2, Lᐧᵢ/ʼˈ;->ﹳٴ:Lˎᵢ/ʽʽ;

    iget-boolean v0, v0, Lˎᵢ/ʽʽ;->ˈʿ:Z

    iget-object v1, p0, Lᐧᵢ/ʻٴ;->ᴵˊ:Lᴵי/ٴﹶ;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lᐧᵢ/ʼˈ;->ⁱˊ:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lᐧᵢ/ˈ;->ﹳᐧ()Lˎᵢ/ʾᵎ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Lᐧᵢ/ˏי;

    invoke-static {p2}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object p2

    invoke-interface {p2}, Lˊʼ/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v0

    iget-object p1, p1, Lˎᵢ/ʾᵎ;->ˑﹳ:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᐧᵢ/ˏי;

    iget-object p2, p1, Lᐧᵢ/ˏי;->ﹳٴ:Ljava/lang/Class;

    iget-object p1, p1, Lᐧᵢ/ˏי;->ʽ:Ljava/lang/reflect/Method;

    new-instance v0, Lkotlin/KotlinNullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lʻᵢ/ﾞᴵ;

    invoke-direct {p1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lᐧᵢ/ʼˈ;)V

    new-instance p2, Lʻᵢ/ﾞᴵ;

    invoke-direct {p2, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p2}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    iget v0, p0, Lᐧᵢ/ʻٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʻᵢ/ﾞᴵ;

    invoke-direct {v0, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lᐧᵢ/ʻٴ;->ᴵˊ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    new-instance v0, Lʻᵢ/ﾞᴵ;

    invoke-direct {v0, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lᐧᵢ/ʻٴ;->ᴵˊ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
