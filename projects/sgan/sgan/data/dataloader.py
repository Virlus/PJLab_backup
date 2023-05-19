from torch.utils.data import DataLoader

from sgan.data.trajectories import TrajectoriesDataset, seq_collate


def data_loader(args, path):
    dset = TrajectoriesDataset(
        path,
        obs_len=args.obs_len,
        pred_len=args.pred_len,
        skip=args.skip,
        delim=args.delim)

    loader = DataLoader(
        dset,
        batch_size=args.batch_size,
        shuffle=True,
        num_workers=args.loader_num_workers,
        collate_fn=seq_collate,
        drop_last = True)
    return dset, loader