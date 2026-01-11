.class Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    iget v3, p1, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x7

    if-eq v3, v4, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    iget v4, p1, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    sget v8, Landroidx/media/AudioAttributesCompat;->ⁱˊ:I

    and-int/lit8 v8, v2, 0x1

    if-ne v8, v5, :cond_2

    move v9, v7

    goto :goto_0

    :cond_2
    and-int/lit8 v8, v2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    move v9, v6

    goto :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v9, 0x3

    goto :goto_0

    :pswitch_1
    move v9, v5

    goto :goto_0

    :pswitch_2
    const/16 v9, 0xa

    goto :goto_0

    :pswitch_3
    const/4 v9, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v9, 0x5

    goto :goto_0

    :pswitch_5
    const/16 v9, 0x8

    goto :goto_0

    :pswitch_6
    move v9, v1

    :goto_0
    :pswitch_7
    if-ne v9, v6, :cond_4

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_4
    if-ne v9, v7, :cond_5

    or-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_1
    and-int/lit16 v2, v2, 0x111

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    if-ne v0, p1, :cond_6

    iget p1, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    if-ne p1, v3, :cond_6

    return v5

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    sget v2, Landroidx/media/AudioAttributesCompat;->ⁱˊ:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v2, "unknown usage "

    invoke-static {v1, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "USAGE_ASSISTANT"

    goto :goto_0

    :pswitch_2
    const-string v1, "USAGE_GAME"

    goto :goto_0

    :pswitch_3
    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    goto :goto_0

    :pswitch_4
    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    goto :goto_0

    :pswitch_5
    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    goto :goto_0

    :pswitch_6
    const-string v1, "USAGE_NOTIFICATION_EVENT"

    goto :goto_0

    :pswitch_7
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    goto :goto_0

    :pswitch_8
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    goto :goto_0

    :pswitch_9
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    goto :goto_0

    :pswitch_a
    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    goto :goto_0

    :pswitch_b
    const-string v1, "USAGE_NOTIFICATION"

    goto :goto_0

    :pswitch_c
    const-string v1, "USAGE_ALARM"

    goto :goto_0

    :pswitch_d
    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    goto :goto_0

    :pswitch_e
    const-string v1, "USAGE_VOICE_COMMUNICATION"

    goto :goto_0

    :pswitch_f
    const-string v1, "USAGE_MEDIA"

    goto :goto_0

    :pswitch_10
    const-string v1, "USAGE_UNKNOWN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
