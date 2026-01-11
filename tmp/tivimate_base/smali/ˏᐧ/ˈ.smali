.class public final synthetic Lˏᐧ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏᐧ/ᵔᵢ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Runnable;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:J

.field public final synthetic ˊʻ:Ljava/util/concurrent/TimeUnit;

.field public final synthetic ᴵˊ:Lˏᐧ/ᵎﹶ;

.field public final synthetic ᴵᵔ:J


# direct methods
.method public synthetic constructor <init>(Lˏᐧ/ᵎﹶ;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    iput p8, p0, Lˏᐧ/ˈ;->ʾˋ:I

    iput-object p1, p0, Lˏᐧ/ˈ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iput-object p2, p0, Lˏᐧ/ˈ;->ʽʽ:Ljava/lang/Runnable;

    iput-wide p3, p0, Lˏᐧ/ˈ;->ˈٴ:J

    iput-wide p5, p0, Lˏᐧ/ˈ;->ᴵᵔ:J

    iput-object p7, p0, Lˏᐧ/ˈ;->ˊʻ:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˊⁱ/ˑﹳ;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .prologue
    iget v0, p0, Lˏᐧ/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˏᐧ/ˈ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iget-object v1, v0, Lˏᐧ/ᵎﹶ;->ᴵˊ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lˏᐧ/ˑﹳ;

    const/4 v3, 0x2

    iget-object v4, p0, Lˏᐧ/ˈ;->ʽʽ:Ljava/lang/Runnable;

    invoke-direct {v2, v0, v4, p1, v3}, Lˏᐧ/ˑﹳ;-><init>(Lˏᐧ/ᵎﹶ;Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V

    iget-wide v3, p0, Lˏᐧ/ˈ;->ˈٴ:J

    iget-wide v5, p0, Lˏᐧ/ˈ;->ᴵᵔ:J

    iget-object v7, p0, Lˏᐧ/ˈ;->ˊʻ:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lˏᐧ/ˈ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iget-object v1, v0, Lˏᐧ/ᵎﹶ;->ᴵˊ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lˏᐧ/ˑﹳ;

    const/4 v3, 0x0

    iget-object v4, p0, Lˏᐧ/ˈ;->ʽʽ:Ljava/lang/Runnable;

    invoke-direct {v2, v0, v4, p1, v3}, Lˏᐧ/ˑﹳ;-><init>(Lˏᐧ/ᵎﹶ;Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V

    iget-wide v3, p0, Lˏᐧ/ˈ;->ˈٴ:J

    iget-wide v5, p0, Lˏᐧ/ˈ;->ᴵᵔ:J

    iget-object v7, p0, Lˏᐧ/ˈ;->ˊʻ:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
