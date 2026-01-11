.class public final Lˑˆ/ﹳٴ;
.super Lᵢˋ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈٴ:I

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˎˉ/ⁱˊ;I)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lˑˆ/ﹳٴ;->ˈٴ:I

    int-to-long v0, p2

    iget p2, p1, Lˎˉ/ⁱˊ;->ٴﹶ:I

    add-int/lit8 p2, p2, -0x1

    int-to-long v2, p2

    invoke-direct {p0, v0, v1, v2, v3}, Lᵢˋ/ⁱˊ;-><init>(JJ)V

    iput-object p1, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lـᵢ/ˆʾ;JJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˑˆ/ﹳٴ;->ˈٴ:I

    invoke-direct {p0, p2, p3, p4, p5}, Lᵢˋ/ⁱˊ;-><init>(JJ)V

    iput-object p1, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʽ()J
    .locals 3

    .prologue
    iget v0, p0, Lˑˆ/ﹳٴ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lᵢˋ/ⁱˊ;->ⁱˊ()V

    iget-object v0, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ˆʾ;

    iget-wide v1, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    invoke-virtual {v0, v1, v2}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Lᵢˋ/ⁱˊ;->ⁱˊ()V

    iget-object v0, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lˎˉ/ⁱˊ;

    iget-wide v1, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    long-to-int v1, v1

    iget-object v0, v0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    aget-wide v1, v0, v1

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()J
    .locals 5

    .prologue
    iget v0, p0, Lˑˆ/ﹳٴ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lᵢˋ/ⁱˊ;->ⁱˊ()V

    iget-object v0, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ˆʾ;

    iget-wide v1, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    invoke-virtual {v0, v1, v2}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Lˑˆ/ﹳٴ;->ʽ()J

    move-result-wide v0

    iget-object v2, p0, Lˑˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lˎˉ/ⁱˊ;

    iget-wide v3, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lˎˉ/ⁱˊ;->ⁱˊ(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
