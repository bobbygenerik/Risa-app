.class public final synthetic Lʻʿ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʻʿ/ٴﹶ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .prologue
    iget v0, p0, Lʻʿ/ٴﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    const-string v0, "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    new-instance v2, Lⁱי/ˆʾ;

    new-instance v3, Lᵔⁱ/ˑﹳ;

    invoke-direct {v3}, Lᵔⁱ/ˑﹳ;-><init>()V

    const/16 v6, 0x3e8

    const/16 v7, 0x7d0

    const v4, 0xc350

    const v5, 0xc350

    invoke-direct/range {v2 .. v7}, Lⁱי/ˆʾ;-><init>(Lᵔⁱ/ˑﹳ;IIII)V

    return-object v2

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_2
    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Lʻʿ/ˉʿ;->ʼˎ:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
