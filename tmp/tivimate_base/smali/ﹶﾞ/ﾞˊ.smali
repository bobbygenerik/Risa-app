.class public final Lﹶﾞ/ﾞˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lـʾ/ᵔﹳ;

.field public final ʾˋ:J

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lـʾ/ᵔﹳ;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ﾞˊ;->ʽʽ:Lـʾ/ᵔﹳ;

    iput-wide p2, p0, Lﹶﾞ/ﾞˊ;->ʾˋ:J

    iput-wide p4, p0, Lﹶﾞ/ﾞˊ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lﹶﾞ/ﾞˊ;->ʽʽ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˉʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹳˊ/יـ;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method
