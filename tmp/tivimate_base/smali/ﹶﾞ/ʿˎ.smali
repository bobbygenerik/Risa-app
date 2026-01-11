.class public final Lﹶﾞ/ʿˎ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\uff9e/\u02bf\u02ce;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:I

.field public final ˈٴ:Ljava/lang/Long;

.field public final ˊʻ:Ljava/lang/String;

.field public final ٴᵢ:Ljava/lang/Double;

.field public final ᴵˊ:Ljava/lang/String;

.field public final ᴵᵔ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳـ/ᵎﹶ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lﹳـ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ʿˎ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶﾞ/ʿˎ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    iput-wide p3, p0, Lﹶﾞ/ʿˎ;->ʽʽ:J

    iput-object p5, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p9

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    :cond_1
    :goto_0
    iput-object p9, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    iput-object p7, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    iput-object p8, p0, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lﹶﾞ/ʿˎ;->ʾˋ:I

    iput-object p4, p0, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    iput-wide p1, p0, Lﹶﾞ/ʿˎ;->ʽʽ:J

    iput-object p5, p0, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    return-void

    :cond_0
    instance-of p2, p3, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p3, Ljava/lang/Long;

    iput-object p3, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    return-void

    :cond_1
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    return-void

    :cond_2
    instance-of p2, p3, Ljava/lang/Double;

    if-eqz p2, :cond_3

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    check-cast p3, Ljava/lang/Double;

    iput-object p3, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    iput-object p1, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lﹶﾞ/יי;)V
    .locals 6

    iget-object v4, p1, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    iget-wide v1, p1, Lﹶﾞ/יי;->ˈ:J

    iget-object v3, p1, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    iget-object v5, p1, Lﹶﾞ/יי;->ⁱˊ:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lﹳـ/ᵎﹶ;->ⁱˊ(Lﹶﾞ/ʿˎ;Landroid/os/Parcel;)V

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
