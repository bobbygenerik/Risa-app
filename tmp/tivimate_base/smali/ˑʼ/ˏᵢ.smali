.class public final Lˑʼ/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02d1\u02bc/\u02cf\u1d62;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:Z

.field public final ʾˋ:Ljava/lang/String;

.field public final ˆﾞ:Ljava/lang/String;

.field public final ˈʿ:Z

.field public final ˈٴ:Z

.field public final ˉٴ:Z

.field public final ˊʻ:I

.field public final ٴʼ:Z

.field public final ٴᵢ:Ljava/lang/String;

.field public final ᴵˊ:Ljava/lang/String;

.field public final ᴵᵔ:I

.field public final ᵎˊ:Z

.field public final ᵎⁱ:Z

.field public final ᵔי:I

.field public final ᵔٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˑʼ/ˏᵢ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ʽʽ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ˈٴ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ˏᵢ;->ᴵᵔ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ˏᵢ;->ˊʻ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ٴᵢ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ˉٴ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ᵎⁱ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ٴʼ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ᵎˊ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ˏᵢ;->ᵔי:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ˏᵢ;->ᵔٴ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lˑʼ/ˏᵢ;->ˈʿ:Z

    return-void
.end method

.method public constructor <init>(Lˑʼ/ᴵᵔ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ʽʽ:Z

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ˑٴ:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ˈٴ:Z

    iget v0, p1, Lˑʼ/ᴵᵔ;->ˉـ:I

    iput v0, p0, Lˑʼ/ˏᵢ;->ᴵᵔ:I

    iget v0, p1, Lˑʼ/ᴵᵔ;->ʿ:I

    iput v0, p0, Lˑʼ/ˏᵢ;->ˊʻ:I

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ٴᵢ:Ljava/lang/String;

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᐧᴵ:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ˉٴ:Z

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ᵎⁱ:Z

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ٴʼ:Z

    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    iput-boolean v0, p0, Lˑʼ/ˏᵢ;->ᵎˊ:Z

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lˑʼ/ˏᵢ;->ᵔי:I

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    iget v0, p1, Lˑʼ/ᴵᵔ;->ᵎⁱ:I

    iput v0, p0, Lˑʼ/ˏᵢ;->ᵔٴ:I

    iget-boolean p1, p1, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    iput-boolean p1, p0, Lˑʼ/ˏᵢ;->ˈʿ:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ʽʽ:Z

    if-eqz v1, :cond_0

    const-string v1, " fromLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ˈٴ:Z

    if-eqz v1, :cond_1

    const-string v1, " dynamicContainer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lˑʼ/ˏᵢ;->ˊʻ:I

    if-eqz v1, :cond_2

    const-string v2, " id=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lˑʼ/ˏᵢ;->ٴᵢ:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, " tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ˉٴ:Z

    if-eqz v1, :cond_4

    const-string v1, " retainInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ᵎⁱ:Z

    if-eqz v1, :cond_5

    const-string v1, " removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ٴʼ:Z

    if-eqz v1, :cond_6

    const-string v1, " detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ᵎˊ:Z

    if-eqz v1, :cond_7

    const-string v1, " hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, " targetWho="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetRequestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑʼ/ˏᵢ;->ᵔٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lˑʼ/ˏᵢ;->ˈʿ:Z

    if-eqz v1, :cond_9

    const-string v1, " userVisibleHint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lˑʼ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ʽʽ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ˈٴ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˑʼ/ˏᵢ;->ᴵᵔ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˑʼ/ˏᵢ;->ˊʻ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ˏᵢ;->ٴᵢ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ˉٴ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ᵎⁱ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ٴʼ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ᵎˊ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˑʼ/ˏᵢ;->ᵔי:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lˑʼ/ˏᵢ;->ᵔٴ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˑʼ/ˏᵢ;->ˈʿ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
