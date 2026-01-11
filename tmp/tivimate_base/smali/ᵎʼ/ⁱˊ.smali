.class public final Lᵎʼ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# static fields
.field public static volatile ʽ:Lˎᵢ/ʻٴ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    iput p1, p0, Lᵎʼ/ⁱˊ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lᵎʼ/ⁱˊ;->ʽ:Lˎᵢ/ʻٴ;

    if-nez p1, :cond_1

    const-class p1, Lᵎʼ/ⁱˊ;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lᵎʼ/ⁱˊ;->ʽ:Lˎᵢ/ʻٴ;

    if-nez v0, :cond_0

    new-instance v0, Lˎᵢ/ʻٴ;

    invoke-direct {v0}, Lˎᵢ/ʻٴ;-><init>()V

    sput-object v0, Lᵎʼ/ⁱˊ;->ʽ:Lˎᵢ/ʻٴ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p1, Lᵎʼ/ⁱˊ;->ʽ:Lˎᵢ/ʻٴ;

    invoke-direct {p0, p1}, Lᵎʼ/ⁱˊ;-><init>(Lˎᵢ/ˈ;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lⁱʼ/ʽ;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lⁱʼ/ʽ;-><init>(I)V

    iput-object p1, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧﹳ/ʽ;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lᐧﹳ/ʽ;-><init>(I)V

    iput-object p1, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lˎᵢ/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lᵎʼ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 2

    .prologue
    iget p1, p0, Lᵎʼ/ⁱˊ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lᵎʼ/ʽ;

    iget-object v0, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lᵎʼ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lˆᴵ/ﹳٴ;

    iget-object v0, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    invoke-direct {p1, v0}, Lˆᴵ/ﹳٴ;-><init>(Lᐧﹳ/ʽ;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lᵎʼ/ʽ;

    iget-object v0, p0, Lᵎʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ˈ;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lᵎʼ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
