.class public final synthetic Lﹳᵢ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹳᵢ/ˋᵔ;


# direct methods
.method public synthetic constructor <init>(Lﹳᵢ/ˋᵔ;I)V
    .locals 0

    iput p2, p0, Lﹳᵢ/ᵔי;->ʾˋ:I

    iput-object p1, p0, Lﹳᵢ/ᵔי;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lﹳᵢ/ᵔי;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹳᵢ/ᵔי;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    iget-boolean v1, v0, Lﹳᵢ/ˋᵔ;->ᵎʻ:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lﹳᵢ/ᵔי;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ʾˋ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lﹳᵢ/ᵔי;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lﹳᵢ/ˋᵔ;->ˈˏ:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
