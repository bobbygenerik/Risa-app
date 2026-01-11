.class public final synthetic Lˊˋ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ˑﹳ;
.implements Lˆʻ/ᵎﹶ;
.implements Lʾﹳ/ﹳٴ;
.implements Lﹳʽ/ʾˋ;
.implements Lˏ/ˈ;
.implements Lˑʿ/ʽﹳ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic ʽ()Landroid/view/WindowInsets;
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    check-cast p1, Lʽᐧ/ﹳٴ;

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p1, Lʽᐧ/ﹳٴ;->ʽ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-wide v0, p1, Lʽᐧ/ﹳٴ;->ⁱˊ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public ˆʾ(Lʾﹳ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;
    .locals 0

    .prologue
    iget p1, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    sget-object p1, Lˏᐧ/ٴﹶ;->ʾˋ:Lˏᐧ/ٴﹶ;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ⁱˊ:Lˏ/ٴﹶ;

    invoke-virtual {p1}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ʽ:Lˏ/ٴﹶ;

    invoke-virtual {p1}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    invoke-virtual {p1}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Lˑʿ/יـ;Lˑʿ/ʻٴ;Z)V
    .locals 0

    .prologue
    iget p3, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    packed-switch p3, :pswitch_data_0

    invoke-interface {p1}, Lˑʿ/יـ;->ﹳٴ()V

    return-void

    :pswitch_0
    invoke-interface {p1, p2}, Lˑʿ/יـ;->ˈ(Lˑʿ/ʻٴ;)V

    return-void

    :pswitch_1
    invoke-interface {p1, p2}, Lˑʿ/יـ;->ﾞᴵ(Lˑʿ/ʻٴ;)V

    return-void

    :pswitch_2
    invoke-interface {p1, p2}, Lˑʿ/יـ;->ᵎﹶ(Lˑʿ/ʻٴ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ᵔᵢ(Lﹳˋ/ʽʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹳʽ/ʼˎ;

    iget-object p1, p1, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    invoke-static {p1}, Lﹳʽ/ʼˎ;->ˊʻ(Lﹳʽ/ᴵᵔ;)V

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-class v3, Lٴʻ/ⁱˊ;

    invoke-virtual {v1, v3, v2}, Lﹳʽ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/String;)Lﹳʽ/ᵎﹶ;

    move-result-object v1

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v1, v2}, Lﹳʽ/ᵎﹶ;->ﹳٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴʻ/ⁱˊ;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/י;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown output prefix type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    invoke-virtual {v0}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lﹳʽ/יـ;->ﹳٴ(I)Lʾᐧ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v0

    :goto_1
    new-instance v2, Lـᵔ/ⁱˊ;

    invoke-direct {v2, v1, p1, v0}, Lـᵔ/ⁱˊ;-><init>(Lٴʻ/ⁱˊ;Lᴵﹳ/י;[B)V

    return-object v2

    :pswitch_0
    check-cast p1, Lˏˑ/ﹳٴ;

    iget-object v0, p1, Lˏˑ/ﹳٴ;->ˈٴ:Lˏˑ/ˑﹳ;

    invoke-static {v0}, Lˏˑ/ʽ;->ﹳٴ(Lˏˑ/ˑﹳ;)V

    new-instance v0, Lﹶˆ/ʽ;

    iget-object v1, p1, Lˏˑ/ﹳٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lˏˑ/ﹳٴ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-direct {v0, v1, p1}, Lﹶˆ/ʽ;-><init>([BLʾᐧ/ﹳٴ;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ()Ljava/lang/reflect/Constructor;
    .locals 5

    .prologue
    iget v0, p0, Lˊˋ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x0

    const-class v2, Lˊﾞ/ˉˆ;

    packed-switch v0, :pswitch_data_0

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isAvailable"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(IIIII)Z
    .locals 3

    .prologue
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_0

    if-ne p4, v2, :cond_0

    if-eq p5, v2, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
