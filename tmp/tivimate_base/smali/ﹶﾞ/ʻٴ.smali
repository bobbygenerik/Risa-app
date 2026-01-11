.class public final Lﹶﾞ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹶﾞ/ʾᵎ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:J


# direct methods
.method public constructor <init>(Lﹶﾞ/ـˆ;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ʻٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ʻٴ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ʻٴ;->ʽʽ:Lﹶﾞ/ʾᵎ;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ﾞˏ;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ʻٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ʻٴ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ʻٴ;->ʽʽ:Lﹶﾞ/ʾᵎ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget v0, p0, Lﹶﾞ/ʻٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ʻٴ;->ʽʽ:Lﹶﾞ/ʾᵎ;

    check-cast v0, Lﹶﾞ/ﾞˏ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵔٴ:Lﹶﾞ/ـˆ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-wide v2, p0, Lﹶﾞ/ʻٴ;->ᴵˊ:J

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ـˆ;->ˋˊ(J)V

    const/4 v1, 0x0

    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ʻٴ;->ʽʽ:Lﹶﾞ/ʾᵎ;

    check-cast v0, Lﹶﾞ/ـˆ;

    iget-wide v1, p0, Lﹶﾞ/ʻٴ;->ᴵˊ:J

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ـˆ;->ﾞˋ(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
