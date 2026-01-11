.class public final Lﹶﾞ/ˏי;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\uff9e/\u02cf\u05d9;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:Ljava/lang/String;

.field public final ˈٴ:J

.field public final ᴵˊ:Lﹶﾞ/יـ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳـ/ᵎﹶ;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lﹳـ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ˏי;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iput-object p2, p0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iput-object p3, p0, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iput-wide p4, p0, Lﹶﾞ/ˏי;->ˈٴ:J

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˏי;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iput-object v0, p0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-object v0, p1, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iput-object v0, p0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iget-object p1, p1, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iput-object p1, p0, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iput-wide p2, p0, Lﹶﾞ/ˏי;->ˈٴ:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v5

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "origin="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params="

    invoke-static {v4, v1, v0}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lﹳـ/ᵎﹶ;->ﹳٴ(Lﹶﾞ/ˏי;Landroid/os/Parcel;I)V

    return-void
.end method
