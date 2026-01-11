.class public final synthetic Lⁱי/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lⁱי/ˉʿ;->ʾˋ:I

    iput-object p2, p0, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lⁱי/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳᵢ/ʼʼ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢـ/ᵔᵢ;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶʽ/ﹳᐧ;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ˆʾ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
